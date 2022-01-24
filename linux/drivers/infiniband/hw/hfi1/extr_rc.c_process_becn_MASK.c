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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct hfi1_pportdata {int /*<<< orphan*/  cca_timer_lock; struct cca_timer* cca_timer; } ;
struct cca_timer {scalar_t__ ccti; int /*<<< orphan*/  hrtimer; } ;
struct TYPE_6__ {TYPE_2__* entries; } ;
struct TYPE_4__ {scalar_t__ ccti_limit; } ;
struct cc_state {TYPE_3__ cong_setting; TYPE_1__ cct; } ;
struct TYPE_5__ {scalar_t__ ccti_increase; scalar_t__ ccti_timer; size_t trigger_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED ; 
 size_t OPA_MAX_SLS ; 
 struct cc_state* FUNC0 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_pportdata*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct hfi1_pportdata *ppd, u8 sl, u32 rlid, u32 lqpn,
		  u32 rqpn, u8 svc_type)
{
	struct cca_timer *cca_timer;
	u16 ccti, ccti_incr, ccti_timer, ccti_limit;
	u8 trigger_threshold;
	struct cc_state *cc_state;
	unsigned long flags;

	if (sl >= OPA_MAX_SLS)
		return;

	cc_state = FUNC0(ppd);

	if (!cc_state)
		return;

	/*
	 * 1) increase CCTI (for this SL)
	 * 2) select IPG (i.e., call set_link_ipg())
	 * 3) start timer
	 */
	ccti_limit = cc_state->cct.ccti_limit;
	ccti_incr = cc_state->cong_setting.entries[sl].ccti_increase;
	ccti_timer = cc_state->cong_setting.entries[sl].ccti_timer;
	trigger_threshold =
		cc_state->cong_setting.entries[sl].trigger_threshold;

	FUNC6(&ppd->cca_timer_lock, flags);

	cca_timer = &ppd->cca_timer[sl];
	if (cca_timer->ccti < ccti_limit) {
		if (cca_timer->ccti + ccti_incr <= ccti_limit)
			cca_timer->ccti += ccti_incr;
		else
			cca_timer->ccti = ccti_limit;
		FUNC5(ppd);
	}

	ccti = cca_timer->ccti;

	if (!FUNC1(&cca_timer->hrtimer)) {
		/* ccti_timer is in units of 1.024 usec */
		unsigned long nsec = 1024 * ccti_timer;

		FUNC2(&cca_timer->hrtimer, FUNC4(nsec),
			      HRTIMER_MODE_REL_PINNED);
	}

	FUNC7(&ppd->cca_timer_lock, flags);

	if ((trigger_threshold != 0) && (ccti >= trigger_threshold))
		FUNC3(ppd, sl, rlid, lqpn, rqpn, svc_type);
}