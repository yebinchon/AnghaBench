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
struct notifier_block {int dummy; } ;
struct extcon_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/ * nh; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct extcon_dev*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct extcon_dev *edev, unsigned int id,
			     struct notifier_block *nb)
{
	unsigned long flags;
	int ret, idx = -EINVAL;

	if (!edev || !nb)
		return -EINVAL;

	idx = FUNC0(edev, id);
	if (idx < 0)
		return idx;

	FUNC2(&edev->lock, flags);
	ret = FUNC1(&edev->nh[idx], nb);
	FUNC3(&edev->lock, flags);

	return ret;
}