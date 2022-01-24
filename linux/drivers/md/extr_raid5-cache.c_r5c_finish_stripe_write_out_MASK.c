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
struct stripe_head_state {scalar_t__ injournal; } ;
struct stripe_head {size_t pd_idx; int disks; int /*<<< orphan*/  state; int /*<<< orphan*/  sector; int /*<<< orphan*/  log_start; int /*<<< orphan*/  r5c; TYPE_1__* dev; } ;
struct r5l_log {scalar_t__ r5c_journal_mode; int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  big_stripe_tree; int /*<<< orphan*/  stripe_in_journal_count; int /*<<< orphan*/  stripe_in_journal_lock; } ;
struct r5conf {int /*<<< orphan*/  r5c_cached_full_stripes; int /*<<< orphan*/  r5c_flushing_full_stripes; int /*<<< orphan*/  r5c_cached_partial_stripes; int /*<<< orphan*/  r5c_flushing_partial_stripes; int /*<<< orphan*/  wait_for_overlap; TYPE_2__* mddev; int /*<<< orphan*/  pending_full_writes; struct r5l_log* log; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  thread; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MaxSector ; 
 scalar_t__ R5C_JOURNAL_MODE_WRITE_THROUGH ; 
 uintptr_t R5C_RADIX_COUNT_SHIFT ; 
 int /*<<< orphan*/  R5_InJournal ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  STRIPE_FULL_WRITE ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int /*<<< orphan*/  STRIPE_R5C_FULL_STRIPE ; 
 int /*<<< orphan*/  STRIPE_R5C_PARTIAL_STRIPE ; 
 int /*<<< orphan*/  STRIPE_SYNC_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct r5conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC10 (struct r5l_log*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (void**,int /*<<< orphan*/ *) ; 
 void** FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void**,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

void FUNC23(struct r5conf *conf,
				 struct stripe_head *sh,
				 struct stripe_head_state *s)
{
	struct r5l_log *log = conf->log;
	int i;
	int do_wakeup = 0;
	sector_t tree_index;
	void **pslot;
	uintptr_t refcount;

	if (!log || !FUNC21(R5_InJournal, &sh->dev[sh->pd_idx].flags))
		return;

	FUNC1(FUNC21(STRIPE_R5C_CACHING, &sh->state));
	FUNC5(R5_InJournal, &sh->dev[sh->pd_idx].flags);

	if (log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_THROUGH)
		return;

	for (i = sh->disks; i--; ) {
		FUNC5(R5_InJournal, &sh->dev[i].flags);
		if (FUNC20(R5_Overlap, &sh->dev[i].flags))
			do_wakeup = 1;
	}

	/*
	 * analyse_stripe() runs before r5c_finish_stripe_write_out(),
	 * We updated R5_InJournal, so we also update s->injournal.
	 */
	s->injournal = 0;

	if (FUNC20(STRIPE_FULL_WRITE, &sh->state))
		if (FUNC3(&conf->pending_full_writes))
			FUNC7(conf->mddev->thread);

	if (do_wakeup)
		FUNC22(&conf->wait_for_overlap);

	FUNC17(&log->stripe_in_journal_lock);
	FUNC6(&sh->r5c);
	FUNC19(&log->stripe_in_journal_lock);
	sh->log_start = MaxSector;

	FUNC2(&log->stripe_in_journal_count);
	FUNC9(log);

	/* stop counting this stripe in big_stripe_tree */
	if (FUNC21(STRIPE_R5C_PARTIAL_STRIPE, &sh->state) ||
	    FUNC21(STRIPE_R5C_FULL_STRIPE, &sh->state)) {
		tree_index = FUNC8(conf, sh->sector);
		FUNC16(&log->tree_lock);
		pslot = FUNC13(&log->big_stripe_tree,
					       tree_index);
		FUNC0(pslot == NULL);
		refcount = (uintptr_t)FUNC12(
			pslot, &log->tree_lock) >>
			R5C_RADIX_COUNT_SHIFT;
		if (refcount == 1)
			FUNC11(&log->big_stripe_tree, tree_index);
		else
			FUNC14(
				&log->big_stripe_tree, pslot,
				(void *)((refcount - 1) << R5C_RADIX_COUNT_SHIFT));
		FUNC18(&log->tree_lock);
	}

	if (FUNC20(STRIPE_R5C_PARTIAL_STRIPE, &sh->state)) {
		FUNC0(FUNC4(&conf->r5c_cached_partial_stripes) == 0);
		FUNC2(&conf->r5c_flushing_partial_stripes);
		FUNC2(&conf->r5c_cached_partial_stripes);
	}

	if (FUNC20(STRIPE_R5C_FULL_STRIPE, &sh->state)) {
		FUNC0(FUNC4(&conf->r5c_cached_full_stripes) == 0);
		FUNC2(&conf->r5c_flushing_full_stripes);
		FUNC2(&conf->r5c_cached_full_stripes);
	}

	FUNC10(log, sh->sector);
	/* stripe is flused to raid disks, we can do resync now */
	if (FUNC21(STRIPE_SYNC_REQUESTED, &sh->state))
		FUNC15(STRIPE_HANDLE, &sh->state);
}