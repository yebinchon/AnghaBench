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
struct work_struct {int dummy; } ;
struct dm_cache_migration {int /*<<< orphan*/  cache; int /*<<< orphan*/ * overwrite_bio; TYPE_1__* op; } ;
struct TYPE_2__ {int /*<<< orphan*/  oblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct work_struct*) ; 
 int /*<<< orphan*/  mg_update_metadata_after_copy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_cache_migration*,int /*<<< orphan*/ ) ; 
 struct dm_cache_migration* FUNC6 (struct work_struct*) ; 

__attribute__((used)) static void FUNC7(struct work_struct *ws)
{
	struct dm_cache_migration *mg = FUNC6(ws);

	if (mg->overwrite_bio) {
		/*
		 * No exclusive lock was held when we last checked if the bio
		 * was optimisable.  So we have to check again in case things
		 * have changed (eg, the block may no longer be discarded).
		 */
		if (!FUNC4(mg->cache, mg->overwrite_bio, mg->op->oblock)) {
			/*
			 * Fallback to a real full copy after doing some tidying up.
			 */
			bool rb = FUNC1(mg->cache, mg->op->oblock, mg->overwrite_bio);
			FUNC0(rb); /* An exclussive lock must _not_ be held for this block */
			mg->overwrite_bio = NULL;
			FUNC2(mg->cache);
			FUNC3(ws);
			return;
		}

		/*
		 * It's safe to do this here, even though it's new data
		 * because all IO has been locked out of the block.
		 *
		 * mg_lock_writes() already took READ_WRITE_LOCK_LEVEL
		 * so _not_ using mg_upgrade_lock() as continutation.
		 */
		FUNC5(mg, mg_update_metadata_after_copy);

	} else
		FUNC3(ws);
}