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
struct hwmon_device_attribute {int /*<<< orphan*/  name; int /*<<< orphan*/  type; scalar_t__ index; int /*<<< orphan*/  attr; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* read ) (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,long*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*,long) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,long*) ; 
 struct hwmon_device_attribute* FUNC3 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			       struct device_attribute *devattr, char *buf)
{
	struct hwmon_device_attribute *hattr = FUNC3(devattr);
	long val;
	int ret;

	ret = hattr->ops->read(dev, hattr->type, hattr->attr, hattr->index,
			       &val);
	if (ret < 0)
		return ret;

	FUNC4(hattr->index + FUNC0(hattr->type),
			      hattr->name, val);

	return FUNC1(buf, "%ld\n", val);
}