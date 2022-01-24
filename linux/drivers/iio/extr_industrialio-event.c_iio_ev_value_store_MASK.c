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
struct iio_dev_attr {int /*<<< orphan*/  c; } ;
struct iio_dev {TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* write_event_value ) (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev_attr*) ; 
 int FUNC4 (char const*,int,int*,int*) ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct iio_dev_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf,
				  size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct iio_dev_attr *this_attr = FUNC6(attr);
	int val, val2;
	int ret;

	if (!indio_dev->info->write_event_value)
		return -EINVAL;

	ret = FUNC4(buf, 100000, &val, &val2);
	if (ret)
		return ret;
	ret = indio_dev->info->write_event_value(indio_dev,
		this_attr->c, FUNC3(this_attr),
		FUNC1(this_attr), FUNC2(this_attr),
		val, val2);
	if (ret < 0)
		return ret;

	return len;
}