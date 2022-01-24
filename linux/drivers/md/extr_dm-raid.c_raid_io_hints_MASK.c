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
struct TYPE_2__ {int /*<<< orphan*/  chunk_sectors; } ;
struct raid_set {TYPE_1__ md; } ;
struct queue_limits {unsigned int discard_granularity; int /*<<< orphan*/  max_discard_sectors; } ;
struct dm_target {struct raid_set* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct queue_limits*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_limits*,unsigned int) ; 
 unsigned int FUNC2 (struct raid_set*) ; 
 scalar_t__ FUNC3 (struct raid_set*) ; 
 scalar_t__ FUNC4 (struct raid_set*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dm_target *ti, struct queue_limits *limits)
{
	struct raid_set *rs = ti->private;
	unsigned int chunk_size_bytes = FUNC5(rs->md.chunk_sectors);

	FUNC0(limits, chunk_size_bytes);
	FUNC1(limits, chunk_size_bytes * FUNC2(rs));

	/*
	 * RAID1 and RAID10 personalities require bio splitting,
	 * RAID0/4/5/6 don't and process large discard bios properly.
	 */
	if (FUNC3(rs) || FUNC4(rs)) {
		limits->discard_granularity = chunk_size_bytes;
		limits->max_discard_sectors = rs->md.chunk_sectors;
	}
}