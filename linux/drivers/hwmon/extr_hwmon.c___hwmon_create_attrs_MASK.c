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
struct hwmon_chip_info {scalar_t__* info; int /*<<< orphan*/  ops; } ;
struct device {int dummy; } ;
struct attribute {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct attribute** FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct attribute** FUNC1 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,void const*,struct attribute**,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static struct attribute **
FUNC4(struct device *dev, const void *drvdata,
		     const struct hwmon_chip_info *chip)
{
	int ret, i, aindex = 0, nattrs = 0;
	struct attribute **attrs;

	for (i = 0; chip->info[i]; i++)
		nattrs += FUNC3(chip->info[i]);

	if (nattrs == 0)
		return FUNC0(-EINVAL);

	attrs = FUNC1(dev, nattrs + 1, sizeof(*attrs), GFP_KERNEL);
	if (!attrs)
		return FUNC0(-ENOMEM);

	for (i = 0; chip->info[i]; i++) {
		ret = FUNC2(dev, drvdata, &attrs[aindex], chip->ops,
				     chip->info[i]);
		if (ret < 0)
			return FUNC0(ret);
		aindex += ret;
	}

	return attrs;
}