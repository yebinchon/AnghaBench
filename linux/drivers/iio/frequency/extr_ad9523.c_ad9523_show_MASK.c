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
typedef  int u32 ;
struct iio_dev_attr {scalar_t__ address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad9523_state {int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD9523_READBACK_0 ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct ad9523_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int) ; 
 struct iio_dev_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			struct device_attribute *attr,
			char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct iio_dev_attr *this_attr = FUNC6(attr);
	struct ad9523_state *st = FUNC2(indio_dev);
	int ret;

	FUNC3(&st->lock);
	ret = FUNC0(indio_dev, AD9523_READBACK_0);
	if (ret >= 0) {
		ret = FUNC5(buf, "%d\n", !!(ret & (1 <<
			(u32)this_attr->address)));
	}
	FUNC4(&st->lock);

	return ret;
}