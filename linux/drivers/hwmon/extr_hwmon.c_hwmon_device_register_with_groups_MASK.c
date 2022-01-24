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
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (struct device*,char const*,void*,int /*<<< orphan*/ *,struct attribute_group const**) ; 

struct device *
FUNC2(struct device *dev, const char *name,
				  void *drvdata,
				  const struct attribute_group **groups)
{
	if (!name)
		return FUNC0(-EINVAL);

	return FUNC1(dev, name, drvdata, NULL, groups);
}