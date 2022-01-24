#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stripe_head {int disks; scalar_t__ bm_seq; size_t pd_idx; int /*<<< orphan*/  lru; int /*<<< orphan*/  state; TYPE_2__* dev; } ;
struct list_head {int dummy; } ;
struct r5conf {scalar_t__ seq_write; scalar_t__ worker_cnt_per_group; int raid_disks; int max_degraded; struct list_head r5c_partial_stripe_list; struct list_head r5c_full_stripe_list; int /*<<< orphan*/  r5c_cached_partial_stripes; int /*<<< orphan*/  r5c_cached_full_stripes; int /*<<< orphan*/  log; int /*<<< orphan*/  active_stripes; TYPE_1__* mddev; int /*<<< orphan*/  preread_active_stripes; struct list_head handle_list; struct list_head loprio_list; struct list_head bitmap_list; struct list_head delayed_list; scalar_t__ quiesce; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IO_THRESHOLD ; 
 int /*<<< orphan*/  R5_InJournal ; 
 int /*<<< orphan*/  STRIPE_BIT_DELAY ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_EXPANDING ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int /*<<< orphan*/  STRIPE_R5C_FULL_STRIPE ; 
 int /*<<< orphan*/  STRIPE_R5C_PARTIAL_STRIPE ; 
 int /*<<< orphan*/  STRIPE_SYNC_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct r5conf*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct stripe_head*) ; 
 int FUNC16 (struct stripe_head*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct r5conf *conf, struct stripe_head *sh,
			      struct list_head *temp_inactive_list)
{
	int i;
	int injournal = 0;	/* number of date pages with R5_InJournal */

	FUNC0(!FUNC8(&sh->lru));
	FUNC0(FUNC5(&conf->active_stripes)==0);

	if (FUNC11(conf->log))
		for (i = sh->disks; i--; )
			if (FUNC19(R5_InJournal, &sh->dev[i].flags))
				injournal++;
	/*
	 * In the following cases, the stripe cannot be released to cached
	 * lists. Therefore, we make the stripe write out and set
	 * STRIPE_HANDLE:
	 *   1. when quiesce in r5c write back;
	 *   2. when resync is requested fot the stripe.
	 */
	if (FUNC19(STRIPE_SYNC_REQUESTED, &sh->state) ||
	    (conf->quiesce && FUNC11(conf->log) &&
	     !FUNC19(STRIPE_HANDLE, &sh->state) && injournal != 0)) {
		if (FUNC19(STRIPE_R5C_CACHING, &sh->state))
			FUNC12(sh);
		FUNC14(STRIPE_HANDLE, &sh->state);
	}

	if (FUNC19(STRIPE_HANDLE, &sh->state)) {
		if (FUNC19(STRIPE_DELAYED, &sh->state) &&
		    !FUNC19(STRIPE_PREREAD_ACTIVE, &sh->state))
			FUNC7(&sh->lru, &conf->delayed_list);
		else if (FUNC19(STRIPE_BIT_DELAY, &sh->state) &&
			   sh->bm_seq - conf->seq_write > 0)
			FUNC7(&sh->lru, &conf->bitmap_list);
		else {
			FUNC6(STRIPE_DELAYED, &sh->state);
			FUNC6(STRIPE_BIT_DELAY, &sh->state);
			if (conf->worker_cnt_per_group == 0) {
				if (FUNC15(sh))
					FUNC7(&sh->lru,
							&conf->loprio_list);
				else
					FUNC7(&sh->lru,
							&conf->handle_list);
			} else {
				FUNC13(sh);
				return;
			}
		}
		FUNC9(conf->mddev->thread);
	} else {
		FUNC0(FUNC16(sh));
		if (FUNC17(STRIPE_PREREAD_ACTIVE, &sh->state))
			if (FUNC3(&conf->preread_active_stripes)
			    < IO_THRESHOLD)
				FUNC9(conf->mddev->thread);
		FUNC2(&conf->active_stripes);
		if (!FUNC19(STRIPE_EXPANDING, &sh->state)) {
			if (!FUNC11(conf->log))
				FUNC7(&sh->lru, temp_inactive_list);
			else {
				FUNC1(FUNC19(R5_InJournal, &sh->dev[sh->pd_idx].flags));
				if (injournal == 0)
					FUNC7(&sh->lru, temp_inactive_list);
				else if (injournal == conf->raid_disks - conf->max_degraded) {
					/* full stripe */
					if (!FUNC18(STRIPE_R5C_FULL_STRIPE, &sh->state))
						FUNC4(&conf->r5c_cached_full_stripes);
					if (FUNC17(STRIPE_R5C_PARTIAL_STRIPE, &sh->state))
						FUNC2(&conf->r5c_cached_partial_stripes);
					FUNC7(&sh->lru, &conf->r5c_full_stripe_list);
					FUNC10(conf);
				} else
					/*
					 * STRIPE_R5C_PARTIAL_STRIPE is set in
					 * r5c_try_caching_write(). No need to
					 * set it again.
					 */
					FUNC7(&sh->lru, &conf->r5c_partial_stripe_list);
			}
		}
	}
}