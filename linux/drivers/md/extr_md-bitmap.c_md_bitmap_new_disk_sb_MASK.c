#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_7__* sb_page; } ;
struct bitmap {unsigned long flags; TYPE_3__* mddev; int /*<<< orphan*/  events_cleared; TYPE_1__ storage; } ;
struct TYPE_12__ {void* events_cleared; void* state; int /*<<< orphan*/  uuid; void* sync_size; void* write_behind; void* daemon_sleep; void* chunksize; void* version; void* magic; } ;
typedef  TYPE_4__ bitmap_super_t ;
struct TYPE_13__ {scalar_t__ index; } ;
struct TYPE_10__ {unsigned long chunksize; unsigned long daemon_sleep; unsigned long max_write_behind; scalar_t__ nodes; } ;
struct TYPE_11__ {TYPE_2__ bitmap_info; int /*<<< orphan*/  events; int /*<<< orphan*/  uuid; int /*<<< orphan*/  resync_max_sectors; } ;

/* Variables and functions */
 unsigned long BITMAP_MAGIC ; 
 unsigned long BITMAP_MAJOR_HI ; 
 int /*<<< orphan*/  BITMAP_STALE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long COUNTER_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int HZ ; 
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 int __GFP_ZERO ; 
 TYPE_7__* FUNC1 (int) ; 
 void* FUNC2 (unsigned long) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 TYPE_4__* FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC11(struct bitmap *bitmap)
{
	bitmap_super_t *sb;
	unsigned long chunksize, daemon_sleep, write_behind;

	bitmap->storage.sb_page = FUNC1(GFP_KERNEL | __GFP_ZERO);
	if (bitmap->storage.sb_page == NULL)
		return -ENOMEM;
	bitmap->storage.sb_page->index = 0;

	sb = FUNC5(bitmap->storage.sb_page);

	sb->magic = FUNC2(BITMAP_MAGIC);
	sb->version = FUNC2(BITMAP_MAJOR_HI);

	chunksize = bitmap->mddev->bitmap_info.chunksize;
	FUNC0(!chunksize);
	if (!FUNC4(chunksize)) {
		FUNC6(sb);
		FUNC9("bitmap chunksize not a power of 2\n");
		return -EINVAL;
	}
	sb->chunksize = FUNC2(chunksize);

	daemon_sleep = bitmap->mddev->bitmap_info.daemon_sleep;
	if (!daemon_sleep || (daemon_sleep > MAX_SCHEDULE_TIMEOUT)) {
		FUNC8("Choosing daemon_sleep default (5 sec)\n");
		daemon_sleep = 5 * HZ;
	}
	sb->daemon_sleep = FUNC2(daemon_sleep);
	bitmap->mddev->bitmap_info.daemon_sleep = daemon_sleep;

	/*
	 * FIXME: write_behind for RAID1.  If not specified, what
	 * is a good choice?  We choose COUNTER_MAX / 2 arbitrarily.
	 */
	write_behind = bitmap->mddev->bitmap_info.max_write_behind;
	if (write_behind > COUNTER_MAX)
		write_behind = COUNTER_MAX / 2;
	sb->write_behind = FUNC2(write_behind);
	bitmap->mddev->bitmap_info.max_write_behind = write_behind;

	/* keep the array size field of the bitmap superblock up to date */
	sb->sync_size = FUNC3(bitmap->mddev->resync_max_sectors);

	FUNC7(sb->uuid, bitmap->mddev->uuid, 16);

	FUNC10(BITMAP_STALE, &bitmap->flags);
	sb->state = FUNC2(bitmap->flags);
	bitmap->events_cleared = bitmap->mddev->events;
	sb->events_cleared = FUNC3(bitmap->mddev->events);
	bitmap->mddev->bitmap_info.nodes = 0;

	FUNC6(sb);

	return 0;
}