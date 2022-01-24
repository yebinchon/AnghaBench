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
struct extcon_dev_notifier_devres {struct notifier_block* nb; struct extcon_dev* edev; } ;
struct extcon_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_extcon_dev_notifier_all_unreg ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct extcon_dev_notifier_devres*) ; 
 struct extcon_dev_notifier_devres* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct extcon_dev_notifier_devres*) ; 
 int FUNC3 (struct extcon_dev*,struct notifier_block*) ; 

int FUNC4(struct device *dev, struct extcon_dev *edev,
				struct notifier_block *nb)
{
	struct extcon_dev_notifier_devres *ptr;
	int ret;

	ptr = FUNC1(devm_extcon_dev_notifier_all_unreg, sizeof(*ptr),
				GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC3(edev, nb);
	if (ret) {
		FUNC2(ptr);
		return ret;
	}

	ptr->edev = edev;
	ptr->nb = nb;
	FUNC0(dev, ptr);

	return 0;
}