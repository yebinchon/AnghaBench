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
struct tsl2583_chip {int /*<<< orphan*/  als_mutex; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct tsl2583_chip* FUNC1 (struct iio_dev*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct iio_dev*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					      struct device_attribute *attr,
					      const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct tsl2583_chip *chip = FUNC1(indio_dev);
	int value, ret;

	if (FUNC2(buf, 0, &value) || value != 1)
		return -EINVAL;

	FUNC3(&chip->als_mutex);

	ret = FUNC5(indio_dev);
	if (ret < 0)
		goto done;

	ret = len;
done:
	FUNC4(&chip->als_mutex);

	return ret;
}