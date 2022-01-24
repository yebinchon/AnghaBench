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
struct dpu_rm_hw_iter {int dummy; } ;
struct dpu_rm {int /*<<< orphan*/  rm_lock; } ;

/* Variables and functions */
 int FUNC0 (struct dpu_rm*,struct dpu_rm_hw_iter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct dpu_rm *rm, struct dpu_rm_hw_iter *i)
{
	bool ret;

	FUNC1(&rm->rm_lock);
	ret = FUNC0(rm, i);
	FUNC2(&rm->rm_lock);

	return ret;
}