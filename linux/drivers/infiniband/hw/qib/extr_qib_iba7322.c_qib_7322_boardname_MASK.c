#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct qib_devdata {char* boardname; int board_atten; int majrev; int minrev; int /*<<< orphan*/  unit; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  revision; int /*<<< orphan*/  boardversion; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  Arch ; 
#define  BOARD_QME7342 130 
#define  BOARD_QMH7342 129 
#define  BOARD_QMH7360 128 
 int /*<<< orphan*/  BoardID ; 
 unsigned int DUAL_PORT_CAP ; 
 unsigned int PORT_SPD_CAP ; 
 unsigned int PORT_SPD_CAP_SHIFT ; 
 int QIB_CHIP_VERS_MAJ ; 
 int QIB_CHIP_VERS_MIN ; 
 int /*<<< orphan*/  QIB_HAS_QSFP ; 
 int /*<<< orphan*/  Revision ; 
 int /*<<< orphan*/  Revision_R ; 
 int /*<<< orphan*/  SW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ qib_singleport ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int,int,char*,unsigned int,int,int,unsigned int) ; 

__attribute__((used)) static unsigned FUNC4(struct qib_devdata *dd)
{
	/* Will need enumeration of board-types here */
	u32 boardid;
	unsigned int features = DUAL_PORT_CAP;

	boardid = FUNC0(dd->revision, Revision, BoardID);

	switch (boardid) {
	case 0:
		dd->boardname = "InfiniPath_QLE7342_Emulation";
		break;
	case 1:
		dd->boardname = "InfiniPath_QLE7340";
		dd->flags |= QIB_HAS_QSFP;
		features = PORT_SPD_CAP;
		break;
	case 2:
		dd->boardname = "InfiniPath_QLE7342";
		dd->flags |= QIB_HAS_QSFP;
		break;
	case 3:
		dd->boardname = "InfiniPath_QMI7342";
		break;
	case 4:
		dd->boardname = "InfiniPath_Unsupported7342";
		FUNC1(dd, "Unsupported version of QMH7342\n");
		features = 0;
		break;
	case BOARD_QMH7342:
		dd->boardname = "InfiniPath_QMH7342";
		features = 0x24;
		break;
	case BOARD_QME7342:
		dd->boardname = "InfiniPath_QME7342";
		break;
	case 8:
		dd->boardname = "InfiniPath_QME7362";
		dd->flags |= QIB_HAS_QSFP;
		break;
	case BOARD_QMH7360:
		dd->boardname = "Intel IB QDR 1P FLR-QSFP Adptr";
		dd->flags |= QIB_HAS_QSFP;
		break;
	case 15:
		dd->boardname = "InfiniPath_QLE7342_TEST";
		dd->flags |= QIB_HAS_QSFP;
		break;
	default:
		dd->boardname = "InfiniPath_QLE73xy_UNKNOWN";
		FUNC1(dd, "Unknown 7322 board type %u\n", boardid);
		break;
	}
	dd->board_atten = 1; /* index into txdds_Xdr */

	FUNC3(dd->boardversion, sizeof(dd->boardversion),
		 "ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\n",
		 QIB_CHIP_VERS_MAJ, QIB_CHIP_VERS_MIN, dd->boardname,
		 (unsigned int)FUNC0(dd->revision, Revision_R, Arch),
		 dd->majrev, dd->minrev,
		 (unsigned int)FUNC0(dd->revision, Revision_R, SW));

	if (qib_singleport && (features >> PORT_SPD_CAP_SHIFT) & PORT_SPD_CAP) {
		FUNC2(dd->pcidev,
			    "IB%u: Forced to single port mode by module parameter\n",
			    dd->unit);
		features &= PORT_SPD_CAP;
	}

	return features;
}