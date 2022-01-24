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
struct ad7877 {int gpio4; int gpio3; int /*<<< orphan*/  mutex; int /*<<< orphan*/  spi; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int AD7877_EXTW_GPIO_DATA ; 
 int /*<<< orphan*/  AD7877_REG_EXTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ad7877* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct ad7877 *ts = FUNC1(dev);
	unsigned int val;
	int error;

	error = FUNC2(buf, 10, &val);
	if (error)
		return error;

	FUNC3(&ts->mutex);
	ts->gpio4 = !!val;
	FUNC0(ts->spi, AD7877_REG_EXTWRITE, AD7877_EXTW_GPIO_DATA |
		     (ts->gpio4 << 4) | (ts->gpio3 << 5));
	FUNC4(&ts->mutex);

	return count;
}