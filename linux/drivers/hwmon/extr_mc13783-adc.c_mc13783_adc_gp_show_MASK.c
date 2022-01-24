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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int FUNC1 (struct device*,struct device_attribute*,unsigned int*) ; 
 int FUNC2 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				   struct device_attribute *devattr,
				   char *buf)
{
	unsigned val;
	int ret = FUNC1(dev, devattr, &val);

	if (ret)
		return ret;

	/*
	 * input range is [0, 2.3V], val has 10 bits, so each bit
	 * is worth 9/4 mV.
	 */
	val = FUNC0(val * 9, 4);

	return FUNC2(buf, "%u\n", val);
}