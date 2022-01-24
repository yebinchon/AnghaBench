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
struct TYPE_2__ {int als_cal_target; } ;
struct tsl2583_chip {int /*<<< orphan*/  als_mutex; TYPE_1__ als_settings; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct tsl2583_chip* FUNC1 (struct iio_dev*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
						 struct device_attribute *attr,
						 const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct tsl2583_chip *chip = FUNC1(indio_dev);
	int value;

	if (FUNC2(buf, 0, &value) || !value)
		return -EINVAL;

	FUNC3(&chip->als_mutex);
	chip->als_settings.als_cal_target = value;
	FUNC4(&chip->als_mutex);

	return len;
}