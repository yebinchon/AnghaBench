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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  cur; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ rqt; } ;
struct c4iw_rdev {int /*<<< orphan*/  rqt_kref; int /*<<< orphan*/  rqt_pool; TYPE_2__ stats; } ;

/* Variables and functions */
 int MIN_RQT_SHIFT ; 
 int /*<<< orphan*/  destroy_rqtpool ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int,int) ; 

void FUNC6(struct c4iw_rdev *rdev, u32 addr, int size)
{
	FUNC4("addr 0x%x size %d\n", addr, size << 6);
	FUNC2(&rdev->stats.lock);
	rdev->stats.rqt.cur -= FUNC5(size << 6, 1 << MIN_RQT_SHIFT);
	FUNC3(&rdev->stats.lock);
	FUNC0(rdev->rqt_pool, (unsigned long)addr, size << 6);
	FUNC1(&rdev->rqt_kref, destroy_rqtpool);
}