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
struct extcon_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  nh_all; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct extcon_dev *edev,
				struct notifier_block *nb)
{
	unsigned long flags;
	int ret;

	if (!edev || !nb)
		return -EINVAL;

	FUNC1(&edev->lock, flags);
	ret = FUNC0(&edev->nh_all, nb);
	FUNC2(&edev->lock, flags);

	return ret;
}