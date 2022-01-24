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
typedef  int /*<<< orphan*/  u32 ;
struct rvt_dev_info {int /*<<< orphan*/  n_ahs_lock; int /*<<< orphan*/  n_ahs_allocated; } ;
struct rvt_ah {int /*<<< orphan*/  attr; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rvt_ah* FUNC1 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct ib_ah *ibah, u32 destroy_flags)
{
	struct rvt_dev_info *dev = FUNC0(ibah->device);
	struct rvt_ah *ah = FUNC1(ibah);
	unsigned long flags;

	FUNC3(&dev->n_ahs_lock, flags);
	dev->n_ahs_allocated--;
	FUNC4(&dev->n_ahs_lock, flags);

	FUNC2(&ah->attr);
}