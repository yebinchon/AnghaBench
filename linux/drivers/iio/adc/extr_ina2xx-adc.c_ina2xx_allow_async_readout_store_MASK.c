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
struct ina2xx_chip_info {int allow_async_readout; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct ina2xx_chip_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t len)
{
	struct ina2xx_chip_info *chip = FUNC1(FUNC0(dev));
	bool val;
	int ret;

	ret = FUNC2((const char *) buf, &val);
	if (ret)
		return ret;

	chip->allow_async_readout = val;

	return len;
}