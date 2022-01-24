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
struct hwmon_device_attribute {int type; int /*<<< orphan*/  name; scalar_t__ index; int /*<<< orphan*/  attr; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
struct TYPE_2__ {int (* read_string ) (struct device*,int,int /*<<< orphan*/ ,scalar_t__,char const**) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char*,char*,char const*) ; 
 int FUNC2 (struct device*,int,int /*<<< orphan*/ ,scalar_t__,char const**) ; 
 struct hwmon_device_attribute* FUNC3 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				      struct device_attribute *devattr,
				      char *buf)
{
	struct hwmon_device_attribute *hattr = FUNC3(devattr);
	enum hwmon_sensor_types type = hattr->type;
	const char *s;
	int ret;

	ret = hattr->ops->read_string(dev, hattr->type, hattr->attr,
				      hattr->index, &s);
	if (ret < 0)
		return ret;

	FUNC4(hattr->index + FUNC0(type),
				     hattr->name, s);

	return FUNC1(buf, "%s\n", s);
}