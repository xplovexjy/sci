# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit multilib

DESCRIPTION="Image rotation package"
HOMEPAGE="http://cardtable.sourceforge.net/tcltk/"
SRC_URI="http://cardtable.sourceforge.net/tcltk/img_rotate.zip -> ${P}.zip"

LICENSE="tcltk"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lang/tcl"
DEPEND="${RDEPEND}
	app-arch/unzip"

S="${WORKDIR}"

src_install() {
	insinto /usr/$(get_libdir)/${P}
	doins *
}
