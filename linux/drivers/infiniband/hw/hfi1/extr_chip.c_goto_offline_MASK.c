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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ reset_needed; scalar_t__ limiting_active; } ;
struct hfi1_pportdata {int host_link_state; scalar_t__ offline_disabled_reason; scalar_t__ port_type; scalar_t__ current_egress_rate; scalar_t__ link_width_downgrade_rx_active; scalar_t__ link_width_downgrade_tx_active; scalar_t__ link_width_active; TYPE_1__ qsfp_info; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_LCB_ERR_EN ; 
 int EINVAL ; 
 int HCMD_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* HLS_DN_OFFLINE ; 
 int HLS_DN_POLL ; 
 int HLS_GOING_OFFLINE ; 
 int HLS_GOING_UP ; 
 int HLS_LINK_COOLDOWN ; 
 int HLS_UP ; 
 int HLS_VERIFY_CAP ; 
 int /*<<< orphan*/  IB_PORT_DOWN ; 
 int /*<<< orphan*/  OPA_LINKDOWN_REASON_NONE ; 
 int /*<<< orphan*/  OPA_LINKDOWN_REASON_TRANSIENT ; 
 int PLS_OFFLINE ; 
 int PLS_OFFLINE_QUIET ; 
 scalar_t__ PORT_TYPE_QSFP ; 
 int /*<<< orphan*/  QSFP_WAIT ; 
 int FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_devdata*) ; 
 int FUNC10 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct hfi1_devdata*,int) ; 
 int FUNC15 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct hfi1_pportdata*,int) ; 
 int FUNC17 (struct hfi1_pportdata*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct hfi1_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static int FUNC19(struct hfi1_pportdata *ppd, u8 rem_reason)
{
	struct hfi1_devdata *dd = ppd->dd;
	u32 previous_state;
	int offline_state_ret;
	int ret;

	FUNC12(dd);

	previous_state = ppd->host_link_state;
	ppd->host_link_state = HLS_GOING_OFFLINE;

	/* start offline transition */
	ret = FUNC10(dd, (rem_reason << 8) | PLS_OFFLINE);

	if (ret != HCMD_SUCCESS) {
		FUNC3(dd,
			   "Failed to transition to Offline link state, return %d\n",
			   ret);
		return -EINVAL;
	}
	if (ppd->offline_disabled_reason ==
			FUNC0(OPA_LINKDOWN_REASON_NONE))
		ppd->offline_disabled_reason =
		FUNC0(OPA_LINKDOWN_REASON_TRANSIENT);

	offline_state_ret = FUNC16(ppd, 10000);
	if (offline_state_ret < 0)
		return offline_state_ret;

	/* Disabling AOC transmitters */
	if (ppd->port_type == PORT_TYPE_QSFP &&
	    ppd->qsfp_info.limiting_active &&
	    FUNC6(ppd)) {
		int ret;

		ret = FUNC1(dd, FUNC7(dd), QSFP_WAIT);
		if (ret == 0) {
			FUNC11(ppd, 0);
			FUNC8(dd, FUNC7(dd));
		} else {
			/* not fatal, but should warn */
			FUNC3(dd,
				   "Unable to acquire lock to turn off QSFP TX\n");
		}
	}

	/*
	 * Wait for the offline.Quiet transition if it hasn't happened yet. It
	 * can take a while for the link to go down.
	 */
	if (offline_state_ret != PLS_OFFLINE_QUIET) {
		ret = FUNC17(ppd, PLS_OFFLINE, 30000);
		if (ret < 0)
			return ret;
	}

	/*
	 * Now in charge of LCB - must be after the physical state is
	 * offline.quiet and before host_link_state is changed.
	 */
	FUNC9(dd);
	FUNC18(dd, DC_LCB_ERR_EN, ~0ull); /* watch LCB errors */

	/* make sure the logical state is also down */
	ret = FUNC15(ppd, IB_PORT_DOWN, 1000);
	if (ret)
		FUNC4(ppd);

	ppd->host_link_state = HLS_LINK_COOLDOWN; /* LCB access allowed */
	FUNC13(ppd, IB_PORT_DOWN);

	/*
	 * The LNI has a mandatory wait time after the physical state
	 * moves to Offline.Quiet.  The wait time may be different
	 * depending on how the link went down.  The 8051 firmware
	 * will observe the needed wait time and only move to ready
	 * when that is completed.  The largest of the quiet timeouts
	 * is 6s, so wait that long and then at least 0.5s more for
	 * other transitions, and another 0.5s for a buffer.
	 */
	ret = FUNC14(dd, 7000);
	if (ret) {
		FUNC3(dd,
			   "After going offline, timed out waiting for the 8051 to become ready to accept host requests\n");
		/* state is really offline, so make it so */
		ppd->host_link_state = HLS_DN_OFFLINE;
		return ret;
	}

	/*
	 * The state is now offline and the 8051 is ready to accept host
	 * requests.
	 *	- change our state
	 *	- notify others if we were previously in a linkup state
	 */
	ppd->host_link_state = HLS_DN_OFFLINE;
	if (previous_state & HLS_UP) {
		/* went down while link was up */
		FUNC5(dd, 0);
	} else if (previous_state
			& (HLS_DN_POLL | HLS_VERIFY_CAP | HLS_GOING_UP)) {
		/* went down while attempting link up */
		FUNC2(ppd);

		/* The QSFP doesn't need to be reset on LNI failure */
		ppd->qsfp_info.reset_needed = 0;
	}

	/* the active link width (downgrade) is 0 on link down */
	ppd->link_width_active = 0;
	ppd->link_width_downgrade_tx_active = 0;
	ppd->link_width_downgrade_rx_active = 0;
	ppd->current_egress_rate = 0;
	return 0;
}