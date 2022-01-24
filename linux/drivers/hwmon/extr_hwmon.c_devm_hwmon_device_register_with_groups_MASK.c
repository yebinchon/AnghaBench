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
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  devm_hwmon_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct device**) ; 
 struct device** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device**) ; 
 struct device* FUNC5 (struct device*,char const*,void*,struct attribute_group const**) ; 

struct device *
FUNC6(struct device *dev, const char *name,
				       void *drvdata,
				       const struct attribute_group **groups)
{
	struct device **ptr, *hwdev;

	if (!dev)
		return FUNC0(-EINVAL);

	ptr = FUNC3(devm_hwmon_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	hwdev = FUNC5(dev, name, drvdata, groups);
	if (FUNC1(hwdev))
		goto error;

	*ptr = hwdev;
	FUNC2(dev, ptr);
	return hwdev;

error:
	FUNC4(ptr);
	return hwdev;
}