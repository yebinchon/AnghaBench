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
typedef  int u8 ;
struct TYPE_2__ {int state; } ;
struct isar_ch {int /*<<< orphan*/  is; TYPE_1__ bch; int /*<<< orphan*/  dpath; } ;

/* Variables and functions */
 int ISAR_HIS_BSTREQ ; 
 int ISAR_HIS_SARTCFG ; 
#define  ISDN_P_B_HDLC 133 
#define  ISDN_P_B_L2DTMF 132 
#define  ISDN_P_B_MODEM_ASYNC 131 
#define  ISDN_P_B_RAW 130 
#define  ISDN_P_B_T30_FAX 129 
#define  ISDN_P_NONE 128 
 int SCTRL_HDMC_BOTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SMODE_BINARY ; 
 int SMODE_DISABLE ; 
 int SMODE_HDLC ; 
 int SMODE_V14 ; 
 int S_P1_CHS_8 ; 
 int S_P2_BFT_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct isar_ch *ch) {
	u8 dps = FUNC0(ch->dpath);
	u8 ctrl, param[2] = {0, 0};

	switch (ch->bch.state) {
	case ISDN_P_NONE:
		FUNC1(ch->is, dps | ISAR_HIS_SARTCFG, SMODE_DISABLE,
			  0, NULL);
		break;
	case ISDN_P_B_RAW:
	case ISDN_P_B_L2DTMF:
		FUNC1(ch->is, dps | ISAR_HIS_SARTCFG, SMODE_BINARY,
			  2, param);
		break;
	case ISDN_P_B_HDLC:
	case ISDN_P_B_T30_FAX:
		FUNC1(ch->is, dps | ISAR_HIS_SARTCFG, SMODE_HDLC,
			  1, param);
		break;
	case ISDN_P_B_MODEM_ASYNC:
		ctrl = SMODE_V14 | SCTRL_HDMC_BOTH;
		param[0] = S_P1_CHS_8;
		param[1] = S_P2_BFT_DEF;
		FUNC1(ch->is, dps | ISAR_HIS_SARTCFG, ctrl, 2, param);
		break;
	}
	FUNC2(1000);
	FUNC1(ch->is, dps | ISAR_HIS_BSTREQ, 0, 0, NULL);
	FUNC2(1000);
}