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
struct per_bio_data {struct pending_block* block; } ;
struct pending_block {int flags; int /*<<< orphan*/  list; } ;
struct log_writes_c {int /*<<< orphan*/  blocks_lock; int /*<<< orphan*/  unflushed_blocks; int /*<<< orphan*/  log_kthread; int /*<<< orphan*/  logging_blocks; } ;
struct dm_target {struct log_writes_c* private; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int DM_ENDIO_DONE ; 
 int LOG_FLUSH_FLAG ; 
 int LOG_FUA_FLAG ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 struct per_bio_data* FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_target *ti, struct bio *bio,
		blk_status_t *error)
{
	struct log_writes_c *lc = ti->private;
	struct per_bio_data *pb = FUNC1(bio, sizeof(struct per_bio_data));

	if (FUNC0(bio) == WRITE && pb->block) {
		struct pending_block *block = pb->block;
		unsigned long flags;

		FUNC4(&lc->blocks_lock, flags);
		if (block->flags & LOG_FLUSH_FLAG) {
			FUNC3(&block->list, &lc->logging_blocks);
			FUNC2(&block->list, &lc->logging_blocks);
			FUNC6(lc->log_kthread);
		} else if (block->flags & LOG_FUA_FLAG) {
			FUNC2(&block->list, &lc->logging_blocks);
			FUNC6(lc->log_kthread);
		} else
			FUNC2(&block->list, &lc->unflushed_blocks);
		FUNC5(&lc->blocks_lock, flags);
	}

	return DM_ENDIO_DONE;
}