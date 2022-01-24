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
struct platform_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int kernel_ulong_t ;
struct TYPE_2__ {int driver_data; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int MC13783_ADC_BPDIV2 ; 
 int FUNC1 (struct device*,struct device_attribute*,unsigned int*) ; 
 TYPE_1__* FUNC2 (struct platform_device*) ; 
 int FUNC3 (char*,char*,int) ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				     struct device_attribute *devattr,
				     char *buf)
{
	unsigned int val;
	struct platform_device *pdev = FUNC4(dev);
	kernel_ulong_t driver_data = FUNC2(pdev)->driver_data;
	int ret = FUNC1(dev, devattr, &val);

	if (ret)
		return ret;

	if (driver_data & MC13783_ADC_BPDIV2) {
		/*
		 * MC13892:
		 * Die Temperature Read Out Code at 25C 680
		 * Temperature change per LSB +0.4244C
		 */
		ret = FUNC0(-2635920 + val * 4244, 10);
	} else {
		/*
		 * MC13783:
		 * Die Temperature Read Out Code at 25C 282
		 * Temperature change per LSB -1.14C
		 */
		ret = 346480 - 1140 * val;
	}

	return FUNC3(buf, "%d\n", ret);
}