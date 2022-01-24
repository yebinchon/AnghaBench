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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7314_data {int /*<<< orphan*/  spi_dev; } ;
typedef  int ssize_t ;
typedef  int s16 ;
struct TYPE_2__ {int driver_data; } ;

/* Variables and functions */
 int AD7314_TEMP_MASK ; 
 int AD7314_TEMP_SHIFT ; 
 int ADT7301_TEMP_MASK ; 
 int FUNC0 (int,int) ; 
 int EINVAL ; 
#define  ad7314 130 
 int FUNC1 (struct ad7314_data*) ; 
#define  adt7301 129 
#define  adt7302 128 
 struct ad7314_data* FUNC2 (struct device*) ; 
 int FUNC3 (int,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				       struct device_attribute *attr,
				       char *buf)
{
	struct ad7314_data *chip = FUNC2(dev);
	s16 data;
	int ret;

	ret = FUNC1(chip);
	if (ret < 0)
		return ret;
	switch (FUNC4(chip->spi_dev)->driver_data) {
	case ad7314:
		data = (ret & AD7314_TEMP_MASK) >> AD7314_TEMP_SHIFT;
		data = FUNC3(data, 9);

		return FUNC5(buf, "%d\n", 250 * data);
	case adt7301:
	case adt7302:
		/*
		 * Documented as a 13 bit twos complement register
		 * with a sign bit - which is a 14 bit 2's complement
		 * register.  1lsb - 31.25 milli degrees centigrade
		 */
		data = ret & ADT7301_TEMP_MASK;
		data = FUNC3(data, 13);

		return FUNC5(buf, "%d\n",
			       FUNC0(data * 3125, 100));
	default:
		return -EINVAL;
	}
}