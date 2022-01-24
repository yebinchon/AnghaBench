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
struct device {int dummy; } ;
struct devfreq_notifier_devres {unsigned int list; struct notifier_block* nb; struct devfreq* devfreq; } ;
struct devfreq {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct devfreq*,struct notifier_block*,unsigned int) ; 
 int /*<<< orphan*/  devm_devfreq_notifier_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct devfreq_notifier_devres*) ; 
 struct devfreq_notifier_devres* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devfreq_notifier_devres*) ; 

int FUNC4(struct device *dev,
				struct devfreq *devfreq,
				struct notifier_block *nb,
				unsigned int list)
{
	struct devfreq_notifier_devres *ptr;
	int ret;

	ptr = FUNC2(devm_devfreq_notifier_release, sizeof(*ptr),
				GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC0(devfreq, nb, list);
	if (ret) {
		FUNC3(ptr);
		return ret;
	}

	ptr->devfreq = devfreq;
	ptr->nb = nb;
	ptr->list = list;
	FUNC1(dev, ptr);

	return 0;
}