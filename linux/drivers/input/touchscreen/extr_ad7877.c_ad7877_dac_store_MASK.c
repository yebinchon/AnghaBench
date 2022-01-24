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
struct ad7877 {unsigned int dac; int /*<<< orphan*/  mutex; int /*<<< orphan*/  spi; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int AD7877_DAC_CONF ; 
 int /*<<< orphan*/  AD7877_REG_DAC ; 
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
	ts->dac = val & 0xFF;
	FUNC0(ts->spi, AD7877_REG_DAC, (ts->dac << 4) | AD7877_DAC_CONF);
	FUNC4(&ts->mutex);

	return count;
}