#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {struct hfi1_pportdata* ppd; int /*<<< orphan*/  qsfp_lock; int /*<<< orphan*/  qsfp_work; } ;
struct hfi1_pportdata {int hw_pidx; int port; int* pkeys; int sm_trap_qp; int sa_qp; int /*<<< orphan*/  cc_state; int /*<<< orphan*/  cc_log_lock; int /*<<< orphan*/  cc_state_lock; int /*<<< orphan*/  cc_max_table_entries; TYPE_2__* cca_timer; int /*<<< orphan*/  cca_timer_lock; int /*<<< orphan*/ * hfi1_wq; TYPE_1__ qsfp_info; int /*<<< orphan*/  hls_lock; int /*<<< orphan*/  linkstate_active_work; int /*<<< orphan*/  start_link_work; int /*<<< orphan*/  link_bounce_work; int /*<<< orphan*/  sma_message_work; int /*<<< orphan*/  link_downgrade_work; int /*<<< orphan*/  freeze_work; int /*<<< orphan*/  link_down_work; int /*<<< orphan*/  link_up_work; int /*<<< orphan*/  link_vc_work; int /*<<< orphan*/  part_enforce; scalar_t__* vl_xmit_flit_cnt; scalar_t__* port_vl_xmit_wait_last; int /*<<< orphan*/  prev_link_width; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;
struct cc_state {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  function; } ;
struct TYPE_5__ {int sl; TYPE_3__ hrtimer; scalar_t__ ccti; struct hfi1_pportdata* ppd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int C_VL_COUNT ; 
 int DEFAULT_P_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HFI1_PART_ENFORCE_IN ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  IB_CC_TABLE_CAP_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_WIDTH_DEFAULT ; 
 int OPA_MAX_SLS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cc_state*) ; 
 int /*<<< orphan*/  cca_timer_fn ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,char*,int) ; 
 int /*<<< orphan*/  handle_freeze ; 
 int /*<<< orphan*/  handle_link_bounce ; 
 int /*<<< orphan*/  handle_link_down ; 
 int /*<<< orphan*/  handle_link_downgrade ; 
 int /*<<< orphan*/  handle_link_up ; 
 int /*<<< orphan*/  handle_sma_message ; 
 int /*<<< orphan*/  handle_start_link ; 
 int /*<<< orphan*/  handle_verify_cap ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cc_state* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ loopback ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qsfp_event ; 
 int /*<<< orphan*/  receive_interrupt_work ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct pci_dev *pdev, struct hfi1_pportdata *ppd,
			 struct hfi1_devdata *dd, u8 hw_pidx, u8 port)
{
	int i;
	uint default_pkey_idx;
	struct cc_state *cc_state;

	ppd->dd = dd;
	ppd->hw_pidx = hw_pidx;
	ppd->port = port; /* IB port number, not index */
	ppd->prev_link_width = LINK_WIDTH_DEFAULT;
	/*
	 * There are C_VL_COUNT number of PortVLXmitWait counters.
	 * Adding 1 to C_VL_COUNT to include the PortXmitWait counter.
	 */
	for (i = 0; i < C_VL_COUNT + 1; i++) {
		ppd->port_vl_xmit_wait_last[i] = 0;
		ppd->vl_xmit_flit_cnt[i] = 0;
	}

	default_pkey_idx = 1;

	ppd->pkeys[default_pkey_idx] = DEFAULT_P_KEY;
	ppd->part_enforce |= HFI1_PART_ENFORCE_IN;

	if (loopback) {
		FUNC3(dd, "Faking data partition 0x8001 in idx %u\n",
			   !default_pkey_idx);
		ppd->pkeys[!default_pkey_idx] = 0x8001;
	}

	FUNC1(&ppd->link_vc_work, handle_verify_cap);
	FUNC1(&ppd->link_up_work, handle_link_up);
	FUNC1(&ppd->link_down_work, handle_link_down);
	FUNC1(&ppd->freeze_work, handle_freeze);
	FUNC1(&ppd->link_downgrade_work, handle_link_downgrade);
	FUNC1(&ppd->sma_message_work, handle_sma_message);
	FUNC1(&ppd->link_bounce_work, handle_link_bounce);
	FUNC0(&ppd->start_link_work, handle_start_link);
	FUNC1(&ppd->linkstate_active_work, receive_interrupt_work);
	FUNC1(&ppd->qsfp_info.qsfp_work, qsfp_event);

	FUNC6(&ppd->hls_lock);
	FUNC7(&ppd->qsfp_info.qsfp_lock);

	ppd->qsfp_info.ppd = ppd;
	ppd->sm_trap_qp = 0x0;
	ppd->sa_qp = 0x1;

	ppd->hfi1_wq = NULL;

	FUNC7(&ppd->cca_timer_lock);

	for (i = 0; i < OPA_MAX_SLS; i++) {
		FUNC4(&ppd->cca_timer[i].hrtimer, CLOCK_MONOTONIC,
			     HRTIMER_MODE_REL);
		ppd->cca_timer[i].ppd = ppd;
		ppd->cca_timer[i].sl = i;
		ppd->cca_timer[i].ccti = 0;
		ppd->cca_timer[i].hrtimer.function = cca_timer_fn;
	}

	ppd->cc_max_table_entries = IB_CC_TABLE_CAP_DEFAULT;

	FUNC7(&ppd->cc_state_lock);
	FUNC7(&ppd->cc_log_lock);
	cc_state = FUNC5(sizeof(*cc_state), GFP_KERNEL);
	FUNC2(ppd->cc_state, cc_state);
	if (!cc_state)
		goto bail;
	return;

bail:
	FUNC3(dd, "Congestion Control Agent disabled for port %d\n", port);
}