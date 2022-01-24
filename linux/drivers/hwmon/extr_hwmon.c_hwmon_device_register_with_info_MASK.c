#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hwmon_chip_info {int /*<<< orphan*/  info; TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  is_visible; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (struct device*,char const*,void*,struct hwmon_chip_info const*,struct attribute_group const**) ; 

struct device *
FUNC2(struct device *dev, const char *name,
				void *drvdata,
				const struct hwmon_chip_info *chip,
				const struct attribute_group **extra_groups)
{
	if (!name)
		return FUNC0(-EINVAL);

	if (chip && (!chip->ops || !chip->ops->is_visible || !chip->info))
		return FUNC0(-EINVAL);

	if (chip && !dev)
		return FUNC0(-EINVAL);

	return FUNC1(dev, name, drvdata, chip, extra_groups);
}