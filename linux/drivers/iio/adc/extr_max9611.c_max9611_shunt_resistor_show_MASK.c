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
struct max9611_dev {int shunt_resistor_uohm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct max9611_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					   struct device_attribute *attr,
					   char *buf)
{
	struct max9611_dev *max9611 = FUNC1(FUNC0(dev));
	unsigned int i, r;

	i = max9611->shunt_resistor_uohm / 1000000;
	r = max9611->shunt_resistor_uohm % 1000000;

	return FUNC2(buf, "%u.%06u\n", i, r);
}