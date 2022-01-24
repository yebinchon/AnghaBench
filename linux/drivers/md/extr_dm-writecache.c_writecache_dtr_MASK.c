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
struct dm_writecache {scalar_t__ dirty_bitmap; scalar_t__ dm_io; scalar_t__ dm_kcopyd; scalar_t__ memory_map; scalar_t__ entries; scalar_t__ ssd_dev; scalar_t__ dev; scalar_t__ writeback_wq; int /*<<< orphan*/  copy_pool; int /*<<< orphan*/  bio_set; scalar_t__ flush_thread; scalar_t__ endio_thread; } ;
struct dm_target {struct dm_writecache* private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct dm_target *ti)
{
	struct dm_writecache *wc = ti->private;

	if (!wc)
		return;

	if (wc->endio_thread)
		FUNC7(wc->endio_thread);

	if (wc->flush_thread)
		FUNC7(wc->flush_thread);

	FUNC1(&wc->bio_set);

	FUNC8(&wc->copy_pool);

	if (wc->writeback_wq)
		FUNC2(wc->writeback_wq);

	if (wc->dev)
		FUNC5(ti, wc->dev);

	if (wc->ssd_dev)
		FUNC5(ti, wc->ssd_dev);

	if (wc->entries)
		FUNC10(wc->entries);

	if (wc->memory_map) {
		if (FUNC0(wc))
			FUNC9(wc);
		else
			FUNC10(wc->memory_map);
	}

	if (wc->dm_kcopyd)
		FUNC4(wc->dm_kcopyd);

	if (wc->dm_io)
		FUNC3(wc->dm_io);

	if (wc->dirty_bitmap)
		FUNC10(wc->dirty_bitmap);

	FUNC6(wc);
}