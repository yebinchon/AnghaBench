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
struct TYPE_5__ {int /*<<< orphan*/  cur; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_2__ srqt; } ;
struct TYPE_4__ {int /*<<< orphan*/  srq_table; } ;
struct c4iw_rdev {TYPE_3__ stats; TYPE_1__ resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct c4iw_rdev *rdev, int idx)
{
	FUNC0(&rdev->resource.srq_table, idx);
	FUNC1(&rdev->stats.lock);
	rdev->stats.srqt.cur--;
	FUNC2(&rdev->stats.lock);
}