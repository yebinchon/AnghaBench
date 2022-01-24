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
struct fw_ohci {int csr_state_setclear_abdicate; int bus_time; int /*<<< orphan*/  lock; int /*<<< orphan*/  is_root; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
#define  CSR_BUSY_TIMEOUT 134 
#define  CSR_BUS_TIME 133 
#define  CSR_CYCLE_TIME 132 
#define  CSR_NODE_IDS 131 
#define  CSR_PRIORITY_BUDGET 130 
 int CSR_STATE_BIT_ABDICATE ; 
 int CSR_STATE_BIT_CMSTR ; 
#define  CSR_STATE_CLEAR 129 
#define  CSR_STATE_SET 128 
 int /*<<< orphan*/  OHCI1394_ATRetries ; 
 int /*<<< orphan*/  OHCI1394_FairnessControl ; 
 int /*<<< orphan*/  OHCI1394_IntEventSet ; 
 int /*<<< orphan*/  OHCI1394_IsochronousCycleTimer ; 
 int /*<<< orphan*/  OHCI1394_LinkControlClear ; 
 int /*<<< orphan*/  OHCI1394_LinkControlSet ; 
 int OHCI1394_LinkControl_cycleMaster ; 
 int /*<<< orphan*/  OHCI1394_NodeID ; 
 int OHCI1394_cycleInconsistent ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_ohci*) ; 
 struct fw_ohci* FUNC2 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct fw_ohci*) ; 

__attribute__((used)) static void FUNC7(struct fw_card *card, int csr_offset, u32 value)
{
	struct fw_ohci *ohci = FUNC2(card);
	unsigned long flags;

	switch (csr_offset) {
	case CSR_STATE_CLEAR:
		if ((value & CSR_STATE_BIT_CMSTR) && ohci->is_root) {
			FUNC3(ohci, OHCI1394_LinkControlClear,
				  OHCI1394_LinkControl_cycleMaster);
			FUNC1(ohci);
		}
		if (value & CSR_STATE_BIT_ABDICATE)
			ohci->csr_state_setclear_abdicate = false;
		break;

	case CSR_STATE_SET:
		if ((value & CSR_STATE_BIT_CMSTR) && ohci->is_root) {
			FUNC3(ohci, OHCI1394_LinkControlSet,
				  OHCI1394_LinkControl_cycleMaster);
			FUNC1(ohci);
		}
		if (value & CSR_STATE_BIT_ABDICATE)
			ohci->csr_state_setclear_abdicate = true;
		break;

	case CSR_NODE_IDS:
		FUNC3(ohci, OHCI1394_NodeID, value >> 16);
		FUNC1(ohci);
		break;

	case CSR_CYCLE_TIME:
		FUNC3(ohci, OHCI1394_IsochronousCycleTimer, value);
		FUNC3(ohci, OHCI1394_IntEventSet,
			  OHCI1394_cycleInconsistent);
		FUNC1(ohci);
		break;

	case CSR_BUS_TIME:
		FUNC4(&ohci->lock, flags);
		ohci->bus_time = (FUNC6(ohci) & 0x40) |
		                 (value & ~0x7f);
		FUNC5(&ohci->lock, flags);
		break;

	case CSR_BUSY_TIMEOUT:
		value = (value & 0xf) | ((value & 0xf) << 4) |
			((value & 0xf) << 8) | ((value & 0x0ffff000) << 4);
		FUNC3(ohci, OHCI1394_ATRetries, value);
		FUNC1(ohci);
		break;

	case CSR_PRIORITY_BUDGET:
		FUNC3(ohci, OHCI1394_FairnessControl, value & 0x3f);
		FUNC1(ohci);
		break;

	default:
		FUNC0(1);
		break;
	}
}