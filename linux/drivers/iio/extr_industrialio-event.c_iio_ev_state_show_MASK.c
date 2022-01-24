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
struct TYPE_2__ {int (* read_event_config ) (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev_attr*) ; 
 int FUNC3 (char*,char*,int) ; 
 int FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_dev_attr* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct iio_dev_attr *this_attr = FUNC5(attr);
	int val;

	val = indio_dev->info->read_event_config(indio_dev,
		this_attr->c, FUNC2(this_attr),
		FUNC1(this_attr));
	if (val < 0)
		return val;
	else
		return FUNC3(buf, "%d\n", val);
}