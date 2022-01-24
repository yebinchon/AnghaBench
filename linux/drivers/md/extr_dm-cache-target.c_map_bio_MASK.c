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
struct policy_work {scalar_t__ op; } ;
struct per_bio_data {scalar_t__ req_nr; } ;
struct TYPE_2__ {int /*<<< orphan*/  demotion; } ;
struct cache {int /*<<< orphan*/  committer; TYPE_1__ stats; int /*<<< orphan*/  policy; } ;
struct bio {int bi_opf; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int ENOENT ; 
 scalar_t__ POLICY_PROMOTE ; 
 int REQ_FUA ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct bio*) ; 
 int FUNC6 (struct cache*,int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct cache*) ; 
 struct per_bio_data* FUNC11 (struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC14 (struct cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC15 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC17 (struct cache*,struct policy_work*,struct bio*) ; 
 scalar_t__ FUNC18 (struct cache*,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct cache*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct policy_work**) ; 
 int /*<<< orphan*/  FUNC22 (struct cache*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct cache*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct cache*,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (struct cache*) ; 
 scalar_t__ FUNC27 (struct cache*) ; 

__attribute__((used)) static int FUNC28(struct cache *cache, struct bio *bio, dm_oblock_t block,
		   bool *commit_needed)
{
	int r, data_dir;
	bool rb, background_queued;
	dm_cblock_t cblock;

	*commit_needed = false;

	rb = FUNC6(cache, block, bio);
	if (!rb) {
		/*
		 * An exclusive lock is held for this block, so we have to
		 * wait.  We set the commit_needed flag so the current
		 * transaction will be committed asap, allowing this lock
		 * to be dropped.
		 */
		*commit_needed = true;
		return DM_MAPIO_SUBMITTED;
	}

	data_dir = FUNC5(bio);

	if (FUNC18(cache, bio, block)) {
		struct policy_work *op = NULL;

		r = FUNC21(cache->policy, block, &cblock, data_dir, true, &op);
		if (FUNC25(r && r != -ENOENT)) {
			FUNC1("%s: policy_lookup_with_work() failed with r = %d",
				    FUNC10(cache), r);
			FUNC9(bio);
			return DM_MAPIO_SUBMITTED;
		}

		if (r == -ENOENT && op) {
			FUNC7(cache, bio);
			FUNC0(op->op != POLICY_PROMOTE);
			FUNC17(cache, op, bio);
			return DM_MAPIO_SUBMITTED;
		}
	} else {
		r = FUNC20(cache->policy, block, &cblock, data_dir, false, &background_queued);
		if (FUNC25(r && r != -ENOENT)) {
			FUNC1("%s: policy_lookup() failed with r = %d",
				    FUNC10(cache), r);
			FUNC9(bio);
			return DM_MAPIO_SUBMITTED;
		}

		if (background_queued)
			FUNC26(cache);
	}

	if (r == -ENOENT) {
		struct per_bio_data *pb = FUNC11(bio);

		/*
		 * Miss.
		 */
		FUNC13(cache, bio);
		if (pb->req_nr == 0) {
			FUNC2(cache, bio);
			FUNC24(cache, bio, block);
		} else {
			/*
			 * This is a duplicate writethrough io that is no
			 * longer needed because the block has been demoted.
			 */
			FUNC8(bio);
			return DM_MAPIO_SUBMITTED;
		}
	} else {
		/*
		 * Hit.
		 */
		FUNC12(cache, bio);

		/*
		 * Passthrough always maps to the origin, invalidating any
		 * cache blocks that are written to.
		 */
		if (FUNC19(cache)) {
			if (FUNC5(bio) == WRITE) {
				FUNC7(cache, bio);
				FUNC4(&cache->stats.demotion);
				FUNC14(cache, cblock, block, bio);
			} else
				FUNC24(cache, bio, block);
		} else {
			if (FUNC5(bio) == WRITE && FUNC27(cache) &&
			    !FUNC15(cache, cblock)) {
				FUNC23(cache, bio, block, cblock);
				FUNC2(cache, bio);
			} else
				FUNC22(cache, bio, block, cblock);
		}
	}

	/*
	 * dm core turns FUA requests into a separate payload and FLUSH req.
	 */
	if (bio->bi_opf & REQ_FUA) {
		/*
		 * issue_after_commit will call accounted_begin a second time.  So
		 * we call accounted_complete() to avoid double accounting.
		 */
		FUNC3(cache, bio);
		FUNC16(&cache->committer, bio);
		*commit_needed = true;
		return DM_MAPIO_SUBMITTED;
	}

	return DM_MAPIO_REMAPPED;
}