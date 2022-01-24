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
struct TYPE_2__ {int active; } ;
struct intel_th_device {TYPE_1__ output; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_th_device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 struct intel_th_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t size)
{
	struct intel_th_device *thdev = FUNC3(dev);
	unsigned long val;
	int ret;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		return ret;

	if (!!val != thdev->output.active) {
		if (val)
			ret = FUNC0(thdev);
		else
			FUNC1(thdev);
	}

	return ret ? ret : size;
}