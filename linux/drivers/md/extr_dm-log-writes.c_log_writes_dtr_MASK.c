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
struct log_writes_c {int /*<<< orphan*/  logdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  unflushed_blocks; int /*<<< orphan*/  logging_blocks; int /*<<< orphan*/  log_kthread; int /*<<< orphan*/  pending_blocks; int /*<<< orphan*/  io_blocks; int /*<<< orphan*/  wait; int /*<<< orphan*/  blocks_lock; } ;
struct dm_target {struct log_writes_c* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct log_writes_c*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct log_writes_c*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct dm_target *ti)
{
	struct log_writes_c *lc = ti->private;

	FUNC8(&lc->blocks_lock);
	FUNC6(&lc->unflushed_blocks, &lc->logging_blocks);
	FUNC9(&lc->blocks_lock);

	/*
	 * This is just nice to have since it'll update the super to include the
	 * unflushed blocks, if it fails we don't really care.
	 */
	FUNC7(lc, "dm-log-writes-end");
	FUNC11(lc->log_kthread);
	FUNC10(lc->wait, !FUNC1(&lc->io_blocks) &&
		   !FUNC1(&lc->pending_blocks));
	FUNC4(lc->log_kthread);

	FUNC0(!FUNC5(&lc->logging_blocks));
	FUNC0(!FUNC5(&lc->unflushed_blocks));
	FUNC2(ti, lc->dev);
	FUNC2(ti, lc->logdev);
	FUNC3(lc);
}