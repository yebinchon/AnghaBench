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
struct adis16136 {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct adis16136*,unsigned int) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct adis16136* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (char const*,int,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct adis16136 *adis16136 = FUNC2(indio_dev);
	unsigned int val;
	int ret;

	ret = FUNC3(buf, 10, &val);
	if (ret)
		return ret;

	if (val == 0)
		return -EINVAL;

	ret = FUNC0(adis16136, val);

	return ret ? ret : len;
}