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
struct log_c {int /*<<< orphan*/  flush_lock; int /*<<< orphan*/  clear_list; int /*<<< orphan*/  flush_entry_pool; } ;
struct dm_dirty_log_flush_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  region; int /*<<< orphan*/  type; } ;
struct dm_dirty_log {struct log_c* context; } ;
typedef  int /*<<< orphan*/  region_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DM_ULOG_CLEAR_REGION ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dm_dirty_log_flush_entry* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct dm_dirty_log *log, region_t region)
{
	unsigned long flags;
	struct log_c *lc = log->context;
	struct dm_dirty_log_flush_entry *fe;

	/*
	 * If we fail to allocate, we skip the clearing of
	 * the region.  This doesn't hurt us in any way, except
	 * to cause the region to be resync'ed when the
	 * device is activated next time.
	 */
	fe = FUNC2(&lc->flush_entry_pool, GFP_ATOMIC);
	if (!fe) {
		FUNC0("Failed to allocate memory to clear region.");
		return;
	}

	FUNC3(&lc->flush_lock, flags);
	fe->type = DM_ULOG_CLEAR_REGION;
	fe->region = region;
	FUNC1(&fe->list, &lc->clear_list);
	FUNC4(&lc->flush_lock, flags);

	return;
}