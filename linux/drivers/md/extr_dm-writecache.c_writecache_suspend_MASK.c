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
struct dm_writecache {int flush_on_suspend; int /*<<< orphan*/  memory_map_size; int /*<<< orphan*/  memory_map; int /*<<< orphan*/  writeback_all; int /*<<< orphan*/  writeback_wq; int /*<<< orphan*/  writeback_work; int /*<<< orphan*/  autocommit_timer; } ;
struct dm_target {struct dm_writecache* private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_writecache*) ; 
 scalar_t__ FUNC9 (struct dm_writecache*) ; 

__attribute__((used)) static void FUNC10(struct dm_target *ti)
{
	struct dm_writecache *wc = ti->private;
	bool flush_on_suspend;

	FUNC1(&wc->autocommit_timer);

	FUNC5(wc);
	FUNC7(wc);
	flush_on_suspend = wc->flush_on_suspend;
	if (flush_on_suspend) {
		wc->flush_on_suspend = false;
		wc->writeback_all++;
		FUNC4(wc->writeback_wq, &wc->writeback_work);
	}
	FUNC6(wc);

	FUNC2(wc->writeback_wq);

	FUNC5(wc);
	if (flush_on_suspend)
		wc->writeback_all--;
	while (FUNC9(wc));

	if (FUNC0(wc))
		FUNC3(wc->memory_map, wc->memory_map_size);

	FUNC8(wc);

	FUNC6(wc);
}