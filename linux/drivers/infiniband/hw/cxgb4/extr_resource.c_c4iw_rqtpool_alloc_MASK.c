#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {scalar_t__ cur; scalar_t__ max; int /*<<< orphan*/  fail; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_2__ rqt; } ;
struct TYPE_4__ {int /*<<< orphan*/  pdev; } ;
struct c4iw_rdev {TYPE_3__ stats; int /*<<< orphan*/  rqt_kref; TYPE_1__ lldi; int /*<<< orphan*/  rqt_pool; } ;

/* Variables and functions */
 int MIN_RQT_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 

u32 FUNC8(struct c4iw_rdev *rdev, int size)
{
	unsigned long addr = FUNC0(rdev->rqt_pool, size << 6);
	FUNC5("addr 0x%x size %d\n", (u32)addr, size << 6);
	if (!addr)
		FUNC6("%s: Out of RQT memory\n",
				    FUNC4(rdev->lldi.pdev));
	FUNC2(&rdev->stats.lock);
	if (addr) {
		rdev->stats.rqt.cur += FUNC7(size << 6, 1 << MIN_RQT_SHIFT);
		if (rdev->stats.rqt.cur > rdev->stats.rqt.max)
			rdev->stats.rqt.max = rdev->stats.rqt.cur;
		FUNC1(&rdev->rqt_kref);
	} else
		rdev->stats.rqt.fail++;
	FUNC3(&rdev->stats.lock);
	return (u32)addr;
}