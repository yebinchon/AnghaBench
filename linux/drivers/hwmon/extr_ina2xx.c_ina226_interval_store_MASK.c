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
struct ina2xx_data {int /*<<< orphan*/  regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INA226_AVG_RD_MASK ; 
 int /*<<< orphan*/  INA2XX_CONFIG ; 
 unsigned long INT_MAX ; 
 struct ina2xx_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *da,
				     const char *buf, size_t count)
{
	struct ina2xx_data *data = FUNC0(dev);
	unsigned long val;
	int status;

	status = FUNC2(buf, 10, &val);
	if (status < 0)
		return status;

	if (val > INT_MAX || val == 0)
		return -EINVAL;

	status = FUNC3(data->regmap, INA2XX_CONFIG,
				    INA226_AVG_RD_MASK,
				    FUNC1(val));
	if (status < 0)
		return status;

	return count;
}