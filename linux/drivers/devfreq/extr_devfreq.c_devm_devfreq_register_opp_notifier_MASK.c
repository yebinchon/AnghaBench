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
struct device {int dummy; } ;
struct devfreq {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*,struct devfreq*) ; 
 int /*<<< orphan*/  devm_devfreq_opp_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct devfreq**) ; 
 struct devfreq** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devfreq**) ; 

int FUNC4(struct device *dev,
				       struct devfreq *devfreq)
{
	struct devfreq **ptr;
	int ret;

	ptr = FUNC2(devm_devfreq_opp_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC0(dev, devfreq);
	if (ret) {
		FUNC3(ptr);
		return ret;
	}

	*ptr = devfreq;
	FUNC1(dev, ptr);

	return 0;
}