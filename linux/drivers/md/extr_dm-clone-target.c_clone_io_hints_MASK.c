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
typedef  int u64 ;
struct queue_limits {int io_opt; } ;
struct dm_target {struct clone* private; } ;
struct clone {int region_size; } ;

/* Variables and functions */
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct queue_limits*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_limits*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct clone*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct clone*,struct queue_limits*) ; 

__attribute__((used)) static void FUNC5(struct dm_target *ti, struct queue_limits *limits)
{
	struct clone *clone = ti->private;
	u64 io_opt_sectors = limits->io_opt >> SECTOR_SHIFT;

	/*
	 * If the system-determined stacked limits are compatible with
	 * dm-clone's region size (io_opt is a factor) do not override them.
	 */
	if (io_opt_sectors < clone->region_size ||
	    FUNC3(io_opt_sectors, clone->region_size)) {
		FUNC0(limits, clone->region_size << SECTOR_SHIFT);
		FUNC1(limits, clone->region_size << SECTOR_SHIFT);
	}

	FUNC2(clone);
	FUNC4(clone, limits);
}