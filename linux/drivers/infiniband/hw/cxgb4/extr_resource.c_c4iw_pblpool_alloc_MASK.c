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
struct TYPE_3__ {scalar_t__ cur; scalar_t__ max; int /*<<< orphan*/  fail; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ pbl; } ;
struct c4iw_rdev {TYPE_2__ stats; int /*<<< orphan*/  pbl_kref; int /*<<< orphan*/  pbl_pool; } ;

/* Variables and functions */
 int MIN_PBL_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,int) ; 

u32 FUNC6(struct c4iw_rdev *rdev, int size)
{
	unsigned long addr = FUNC0(rdev->pbl_pool, size);
	FUNC4("addr 0x%x size %d\n", (u32)addr, size);
	FUNC2(&rdev->stats.lock);
	if (addr) {
		rdev->stats.pbl.cur += FUNC5(size, 1 << MIN_PBL_SHIFT);
		if (rdev->stats.pbl.cur > rdev->stats.pbl.max)
			rdev->stats.pbl.max = rdev->stats.pbl.cur;
		FUNC1(&rdev->pbl_kref);
	} else
		rdev->stats.pbl.fail++;
	FUNC3(&rdev->stats.lock);
	return (u32)addr;
}