#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ cur; scalar_t__ max; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ ocqp; } ;
struct c4iw_rdev {TYPE_2__ stats; int /*<<< orphan*/  ocqp_pool; } ;

/* Variables and functions */
 int MIN_OCQP_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int,int) ; 

u32 FUNC5(struct c4iw_rdev *rdev, int size)
{
	unsigned long addr = FUNC0(rdev->ocqp_pool, size);
	FUNC3("addr 0x%x size %d\n", (u32)addr, size);
	if (addr) {
		FUNC1(&rdev->stats.lock);
		rdev->stats.ocqp.cur += FUNC4(size, 1 << MIN_OCQP_SHIFT);
		if (rdev->stats.ocqp.cur > rdev->stats.ocqp.max)
			rdev->stats.ocqp.max = rdev->stats.ocqp.cur;
		FUNC2(&rdev->stats.lock);
	}
	return (u32)addr;
}