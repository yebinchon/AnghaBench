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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct cached_dev {int writeback_running; int writeback_rate_update_seconds; int /*<<< orphan*/  writeback_rate_update; TYPE_1__ disk; int /*<<< orphan*/  writeback_thread; int /*<<< orphan*/  writeback_write_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCACHE_DEV_WB_RUNNING ; 
 int ENOMEM ; 
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cached_dev*) ; 
 int /*<<< orphan*/  bch_writeback_thread ; 
 int /*<<< orphan*/  FUNC5 (struct cached_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cached_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cached_dev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct cached_dev *dc)
{
	dc->writeback_write_wq = FUNC3("bcache_writeback_wq",
						WQ_MEM_RECLAIM, 0);
	if (!dc->writeback_write_wq)
		return -ENOMEM;

	FUNC5(dc);
	dc->writeback_thread = FUNC8(bch_writeback_thread, dc,
					      "bcache_writeback");
	if (FUNC0(dc->writeback_thread)) {
		FUNC6(dc);
		FUNC7(dc->writeback_write_wq);
		return FUNC1(dc->writeback_thread);
	}
	dc->writeback_running = true;

	FUNC2(FUNC10(BCACHE_DEV_WB_RUNNING, &dc->disk.flags));
	FUNC9(&dc->writeback_rate_update,
			      dc->writeback_rate_update_seconds * HZ);

	FUNC4(dc);

	return 0;
}