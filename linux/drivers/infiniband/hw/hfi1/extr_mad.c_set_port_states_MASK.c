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
typedef  scalar_t__ u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct hfi1_pportdata {int /*<<< orphan*/  neighbor_normal; int /*<<< orphan*/  offline_disabled_reason; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HFI_TRANSITION_DISALLOWED ; 
 int HFI_TRANSITION_IGNORED ; 
 int HFI_TRANSITION_UNDEFINED ; 
 scalar_t__ HLS_DN_DISABLE ; 
 scalar_t__ HLS_DN_DOWNDEF ; 
 scalar_t__ HLS_DN_OFFLINE ; 
 scalar_t__ HLS_DN_POLL ; 
 scalar_t__ HLS_UP_ACTIVE ; 
 scalar_t__ HLS_UP_ARMED ; 
 int IB_MAD_RESULT_CONSUMED ; 
 int IB_MAD_RESULT_SUCCESS ; 
 scalar_t__ IB_PORTPHYSSTATE_DISABLED ; 
 scalar_t__ IB_PORTPHYSSTATE_NOP ; 
 scalar_t__ IB_PORTPHYSSTATE_POLLING ; 
#define  IB_PORT_ACTIVE 131 
#define  IB_PORT_ARMED 130 
#define  IB_PORT_DOWN 129 
#define  IB_PORT_NOP 128 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  OPA_LINKDOWN_REASON_FM_BOUNCE ; 
 int /*<<< orphan*/  OPA_LINKDOWN_REASON_NONE ; 
 int /*<<< orphan*/  OPA_LINKDOWN_REASON_SMA_DISABLED ; 
 int /*<<< orphan*/  SMA_IDLE_ACTIVE ; 
 int /*<<< orphan*/  SMA_IDLE_ARM ; 
 int FUNC1 (struct hfi1_pportdata*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hfi1_pportdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_pportdata*) ; 

__attribute__((used)) static int FUNC7(struct hfi1_pportdata *ppd, struct opa_smp *smp,
			   u32 logical_state, u32 phys_state, int local_mad)
{
	struct hfi1_devdata *dd = ppd->dd;
	u32 link_state;
	int ret;

	ret = FUNC1(ppd, logical_state, phys_state);
	if (ret == HFI_TRANSITION_DISALLOWED ||
	    ret == HFI_TRANSITION_UNDEFINED) {
		/* error message emitted above */
		smp->status |= IB_SMP_INVALID_FIELD;
		return 0;
	}

	if (ret == HFI_TRANSITION_IGNORED)
		return 0;

	if ((phys_state != IB_PORTPHYSSTATE_NOP) &&
	    !(logical_state == IB_PORT_DOWN ||
	      logical_state == IB_PORT_NOP)){
		FUNC2("SubnSet(OPA_PortInfo) port state invalid: logical_state 0x%x physical_state 0x%x\n",
			logical_state, phys_state);
		smp->status |= IB_SMP_INVALID_FIELD;
	}

	/*
	 * Logical state changes are summarized in OPAv1g1 spec.,
	 * Table 9-12; physical state changes are summarized in
	 * OPAv1g1 spec., Table 6.4.
	 */
	switch (logical_state) {
	case IB_PORT_NOP:
		if (phys_state == IB_PORTPHYSSTATE_NOP)
			break;
		/* FALLTHROUGH */
	case IB_PORT_DOWN:
		if (phys_state == IB_PORTPHYSSTATE_NOP) {
			link_state = HLS_DN_DOWNDEF;
		} else if (phys_state == IB_PORTPHYSSTATE_POLLING) {
			link_state = HLS_DN_POLL;
			FUNC4(ppd, OPA_LINKDOWN_REASON_FM_BOUNCE,
					     0, OPA_LINKDOWN_REASON_FM_BOUNCE);
		} else if (phys_state == IB_PORTPHYSSTATE_DISABLED) {
			link_state = HLS_DN_DISABLE;
		} else {
			FUNC2("SubnSet(OPA_PortInfo) invalid physical state 0x%x\n",
				phys_state);
			smp->status |= IB_SMP_INVALID_FIELD;
			break;
		}

		if ((link_state == HLS_DN_POLL ||
		     link_state == HLS_DN_DOWNDEF)) {
			/*
			 * Going to poll.  No matter what the current state,
			 * always move offline first, then tune and start the
			 * link.  This correctly handles a FM link bounce and
			 * a link enable.  Going offline is a no-op if already
			 * offline.
			 */
			FUNC5(ppd, HLS_DN_OFFLINE);
			FUNC6(ppd);
		} else {
			FUNC5(ppd, link_state);
		}
		if (link_state == HLS_DN_DISABLE &&
		    (ppd->offline_disabled_reason >
		     FUNC0(OPA_LINKDOWN_REASON_SMA_DISABLED) ||
		     ppd->offline_disabled_reason ==
		     FUNC0(OPA_LINKDOWN_REASON_NONE)))
			ppd->offline_disabled_reason =
			FUNC0(OPA_LINKDOWN_REASON_SMA_DISABLED);
		/*
		 * Don't send a reply if the response would be sent
		 * through the disabled port.
		 */
		if (link_state == HLS_DN_DISABLE && !local_mad)
			return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
		break;
	case IB_PORT_ARMED:
		ret = FUNC5(ppd, HLS_UP_ARMED);
		if (!ret)
			FUNC3(dd, SMA_IDLE_ARM);
		break;
	case IB_PORT_ACTIVE:
		if (ppd->neighbor_normal) {
			ret = FUNC5(ppd, HLS_UP_ACTIVE);
			if (ret == 0)
				FUNC3(dd, SMA_IDLE_ACTIVE);
		} else {
			FUNC2("SubnSet(OPA_PortInfo) Cannot move to Active with NeighborNormal 0\n");
			smp->status |= IB_SMP_INVALID_FIELD;
		}
		break;
	default:
		FUNC2("SubnSet(OPA_PortInfo) invalid logical state 0x%x\n",
			logical_state);
		smp->status |= IB_SMP_INVALID_FIELD;
	}

	return 0;
}