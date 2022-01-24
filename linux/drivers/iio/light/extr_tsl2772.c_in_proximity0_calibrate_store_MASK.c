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
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					     struct device_attribute *attr,
					     const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	bool value;
	int ret;

	if (FUNC1(buf, &value) || !value)
		return -EINVAL;

	ret = FUNC3(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC2(indio_dev);
	if (ret < 0)
		return ret;

	return len;
}