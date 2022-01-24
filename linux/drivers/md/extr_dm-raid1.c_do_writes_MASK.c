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
struct bio_list {int head; } ;
struct mirror_set {int log_failure; int leg_failure; int /*<<< orphan*/  lock; struct bio_list failures; int /*<<< orphan*/  rh; struct bio_list writes; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int bi_opf; } ;
typedef  int /*<<< orphan*/  region_t ;
struct TYPE_2__ {scalar_t__ (* is_remote_recovering ) (struct dm_dirty_log*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  DM_RH_CLEAN 131 
#define  DM_RH_DIRTY 130 
#define  DM_RH_NOSYNC 129 
#define  DM_RH_RECOVERING 128 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct bio_list*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC3 (struct bio_list*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bio*) ; 
 struct dm_dirty_log* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct mirror_set*,struct bio*) ; 
 scalar_t__ FUNC13 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC14 (struct bio*) ; 
 int /*<<< orphan*/  FUNC15 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC16 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct dm_dirty_log*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (struct mirror_set*) ; 

__attribute__((used)) static void FUNC23(struct mirror_set *ms, struct bio_list *writes)
{
	int state;
	struct bio *bio;
	struct bio_list sync, nosync, recover, *this_list = NULL;
	struct bio_list requeue;
	struct dm_dirty_log *log = FUNC8(ms->rh);
	region_t region;

	if (!writes->head)
		return;

	/*
	 * Classify each write.
	 */
	FUNC1(&sync);
	FUNC1(&nosync);
	FUNC1(&recover);
	FUNC1(&requeue);

	while ((bio = FUNC3(writes))) {
		if ((bio->bi_opf & REQ_PREFLUSH) ||
		    (FUNC4(bio) == REQ_OP_DISCARD)) {
			FUNC0(&sync, bio);
			continue;
		}

		region = FUNC6(ms->rh, bio);

		if (log->type->is_remote_recovering &&
		    log->type->is_remote_recovering(log, region)) {
			FUNC0(&requeue, bio);
			continue;
		}

		state = FUNC10(ms->rh, region, 1);
		switch (state) {
		case DM_RH_CLEAN:
		case DM_RH_DIRTY:
			this_list = &sync;
			break;

		case DM_RH_NOSYNC:
			this_list = &nosync;
			break;

		case DM_RH_RECOVERING:
			this_list = &recover;
			break;
		}

		FUNC0(this_list, bio);
	}

	/*
	 * Add bios that are delayed due to remote recovery
	 * back on to the write queue
	 */
	if (FUNC21(requeue.head)) {
		FUNC18(&ms->lock);
		FUNC2(&ms->writes, &requeue);
		FUNC19(&ms->lock);
		FUNC5(ms);
	}

	/*
	 * Increment the pending counts for any regions that will
	 * be written to (writes to recover regions are going to
	 * be delayed).
	 */
	FUNC11(ms->rh, &sync);
	FUNC11(ms->rh, &nosync);

	/*
	 * If the flush fails on a previous call and succeeds here,
	 * we must not reset the log_failure variable.  We need
	 * userspace interaction to do that.
	 */
	ms->log_failure = FUNC9(ms->rh) ? 1 : ms->log_failure;

	/*
	 * Dispatch io.
	 */
	if (FUNC21(ms->log_failure) && FUNC13(ms)) {
		FUNC18(&ms->lock);
		FUNC2(&ms->failures, &sync);
		FUNC19(&ms->lock);
		FUNC22(ms);
	} else
		while ((bio = FUNC3(&sync)))
			FUNC12(ms, bio);

	while ((bio = FUNC3(&recover)))
		FUNC7(ms->rh, bio);

	while ((bio = FUNC3(&nosync))) {
		if (FUNC21(ms->leg_failure) && FUNC13(ms) && !FUNC16(ms)) {
			FUNC18(&ms->lock);
			FUNC0(&ms->failures, bio);
			FUNC19(&ms->lock);
			FUNC22(ms);
		} else {
			FUNC17(FUNC15(ms), bio);
			FUNC14(bio);
		}
	}
}