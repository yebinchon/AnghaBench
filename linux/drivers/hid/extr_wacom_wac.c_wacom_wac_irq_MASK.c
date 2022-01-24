#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int type; } ;
struct wacom_wac {scalar_t__ pad_input; scalar_t__ touch_input; scalar_t__ pen_input; int /*<<< orphan*/ * data; TYPE_1__ features; } ;

/* Variables and functions */
#define  BAMBOO_PAD 180 
#define  BAMBOO_PEN 179 
#define  BAMBOO_PT 178 
#define  BAMBOO_TOUCH 177 
#define  CINTIQ 176 
#define  CINTIQ_COMPANION_2 175 
#define  CINTIQ_HYBRID 174 
#define  DTK 173 
#define  DTU 172 
#define  DTUS 171 
#define  DTUSX 170 
#define  GRAPHIRE 169 
#define  GRAPHIRE_BT 168 
#define  INTUOS 167 
#define  INTUOS3 166 
#define  INTUOS3L 165 
#define  INTUOS3S 164 
#define  INTUOS4 163 
#define  INTUOS4L 162 
#define  INTUOS4S 161 
#define  INTUOS4WL 160 
#define  INTUOS5 159 
#define  INTUOS5L 158 
#define  INTUOS5S 157 
#define  INTUOSHT 156 
#define  INTUOSHT2 155 
#define  INTUOSHT3_BT 154 
#define  INTUOSP2S_BT 153 
#define  INTUOSP2_BT 152 
#define  INTUOSPL 151 
#define  INTUOSPM 150 
#define  INTUOSPS 149 
#define  MTSCREEN 148 
#define  MTTPC 147 
#define  MTTPC_B 146 
#define  PENPARTNER 145 
#define  PL 144 
#define  PTU 143 
#define  REMOTE 142 
#define  TABLETPC 141 
#define  TABLETPC2FG 140 
#define  TABLETPCE 139 
#define  WACOM_13HD 138 
#define  WACOM_21UX2 137 
#define  WACOM_22HD 136 
#define  WACOM_24HD 135 
#define  WACOM_24HDT 134 
#define  WACOM_27QHD 133 
#define  WACOM_27QHDT 132 
#define  WACOM_BEE 131 
#define  WACOM_G4 130 
#define  WACOM_MO 129 
 size_t WACOM_PKGLEN_BBTOUCH3 ; 
 int /*<<< orphan*/  WACOM_REPORT_DEVICE_LIST ; 
 int /*<<< orphan*/  WACOM_REPORT_USB ; 
#define  WIRELESS 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct wacom_wac*) ; 
 int FUNC2 (struct wacom_wac*,size_t) ; 
 int FUNC3 (struct wacom_wac*) ; 
 int FUNC4 (struct wacom_wac*,size_t) ; 
 int FUNC5 (struct wacom_wac*) ; 
 int FUNC6 (struct wacom_wac*) ; 
 int FUNC7 (struct wacom_wac*) ; 
 int FUNC8 (struct wacom_wac*,size_t) ; 
 int FUNC9 (struct wacom_wac*) ; 
 int FUNC10 (struct wacom_wac*,size_t) ; 
 int FUNC11 (struct wacom_wac*) ; 
 int FUNC12 (struct wacom_wac*) ; 
 int FUNC13 (struct wacom_wac*) ; 
 int FUNC14 (struct wacom_wac*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct wacom_wac*,size_t) ; 
 int FUNC16 (struct wacom_wac*,size_t) ; 
 int FUNC17 (struct wacom_wac*,size_t) ; 
 int FUNC18 (struct wacom_wac*,size_t) ; 

void FUNC19(struct wacom_wac *wacom_wac, size_t len)
{
	bool sync;

	switch (wacom_wac->features.type) {
	case PENPARTNER:
		sync = FUNC11(wacom_wac);
		break;

	case PL:
		sync = FUNC12(wacom_wac);
		break;

	case WACOM_G4:
	case GRAPHIRE:
	case GRAPHIRE_BT:
	case WACOM_MO:
		sync = FUNC7(wacom_wac);
		break;

	case PTU:
		sync = FUNC13(wacom_wac);
		break;

	case DTU:
		sync = FUNC5(wacom_wac);
		break;

	case DTUS:
	case DTUSX:
		sync = FUNC6(wacom_wac);
		break;

	case INTUOS:
	case INTUOS3S:
	case INTUOS3:
	case INTUOS3L:
	case INTUOS4S:
	case INTUOS4:
	case INTUOS4L:
	case CINTIQ:
	case WACOM_BEE:
	case WACOM_13HD:
	case WACOM_21UX2:
	case WACOM_22HD:
	case WACOM_24HD:
	case WACOM_27QHD:
	case DTK:
	case CINTIQ_HYBRID:
	case CINTIQ_COMPANION_2:
		sync = FUNC9(wacom_wac);
		break;

	case INTUOS4WL:
		sync = FUNC8(wacom_wac, len);
		break;

	case WACOM_24HDT:
	case WACOM_27QHDT:
		sync = FUNC1(wacom_wac);
		break;

	case INTUOS5S:
	case INTUOS5:
	case INTUOS5L:
	case INTUOSPS:
	case INTUOSPM:
	case INTUOSPL:
		if (len == WACOM_PKGLEN_BBTOUCH3)
			sync = FUNC3(wacom_wac);
		else if (wacom_wac->data[0] == WACOM_REPORT_USB)
			sync = FUNC16(wacom_wac, len);
		else
			sync = FUNC9(wacom_wac);
		break;

	case INTUOSP2_BT:
	case INTUOSP2S_BT:
	case INTUOSHT3_BT:
		sync = FUNC10(wacom_wac, len);
		break;

	case TABLETPC:
	case TABLETPCE:
	case TABLETPC2FG:
	case MTSCREEN:
	case MTTPC:
	case MTTPC_B:
		sync = FUNC17(wacom_wac, len);
		break;

	case BAMBOO_PT:
	case BAMBOO_PEN:
	case BAMBOO_TOUCH:
	case INTUOSHT:
	case INTUOSHT2:
		if (wacom_wac->data[0] == WACOM_REPORT_USB)
			sync = FUNC16(wacom_wac, len);
		else
			sync = FUNC4(wacom_wac, len);
		break;

	case BAMBOO_PAD:
		sync = FUNC2(wacom_wac, len);
		break;

	case WIRELESS:
		sync = FUNC18(wacom_wac, len);
		break;

	case REMOTE:
		sync = false;
		if (wacom_wac->data[0] == WACOM_REPORT_DEVICE_LIST)
			FUNC15(wacom_wac, len);
		else
			sync = FUNC14(wacom_wac, len);
		break;

	default:
		sync = false;
		break;
	}

	if (sync) {
		if (wacom_wac->pen_input)
			FUNC0(wacom_wac->pen_input);
		if (wacom_wac->touch_input)
			FUNC0(wacom_wac->touch_input);
		if (wacom_wac->pad_input)
			FUNC0(wacom_wac->pad_input);
	}
}