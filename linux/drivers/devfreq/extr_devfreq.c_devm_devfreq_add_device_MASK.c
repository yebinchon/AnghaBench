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
struct devfreq_dev_profile {int dummy; } ;
struct devfreq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct devfreq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct devfreq*) ; 
 struct devfreq* FUNC2 (struct device*,struct devfreq_dev_profile*,char const*,void*) ; 
 int /*<<< orphan*/  devm_devfreq_dev_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct devfreq**) ; 
 struct devfreq** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct devfreq**) ; 

struct devfreq *FUNC6(struct device *dev,
					struct devfreq_dev_profile *profile,
					const char *governor_name,
					void *data)
{
	struct devfreq **ptr, *devfreq;

	ptr = FUNC4(devm_devfreq_dev_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	devfreq = FUNC2(dev, profile, governor_name, data);
	if (FUNC1(devfreq)) {
		FUNC5(ptr);
		return devfreq;
	}

	*ptr = devfreq;
	FUNC3(dev, ptr);

	return devfreq;
}