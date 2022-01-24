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
struct dmz_metadata {int /*<<< orphan*/  mblk_lock; } ;
struct dmz_mblock {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_META_ERROR ; 
 int /*<<< orphan*/  DMZ_META_READING ; 
 int /*<<< orphan*/  EIO ; 
 struct dmz_mblock* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dmz_mblock*) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct dmz_mblock* FUNC2 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 struct dmz_mblock* FUNC3 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*,struct dmz_mblock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dmz_mblock *FUNC9(struct dmz_metadata *zmd,
					 sector_t mblk_no)
{
	struct dmz_mblock *mblk;

	/* Check rbtree */
	FUNC5(&zmd->mblk_lock);
	mblk = FUNC2(zmd, mblk_no);
	FUNC6(&zmd->mblk_lock);

	if (!mblk) {
		/* Cache miss: read the block from disk */
		mblk = FUNC3(zmd, mblk_no);
		if (FUNC1(mblk))
			return mblk;
	}

	/* Wait for on-going read I/O and check for error */
	FUNC8(&mblk->state, DMZ_META_READING,
		       TASK_UNINTERRUPTIBLE);
	if (FUNC7(DMZ_META_ERROR, &mblk->state)) {
		FUNC4(zmd, mblk);
		return FUNC0(-EIO);
	}

	return mblk;
}