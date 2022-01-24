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
struct device {int dummy; } ;
struct iio_dev {struct device dev; } ;
struct dpot_dac {int /*<<< orphan*/  dpot; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_VAL_FRACTIONAL 130 
#define  IIO_VAL_FRACTIONAL_LOG2 129 
#define  IIO_VAL_INT 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,long long) ; 
 struct dpot_dac* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct device *dev = &indio_dev->dev;
	struct dpot_dac *dac = FUNC2(indio_dev);
	unsigned long long tmp;
	int ret;
	int val;
	int val2;
	int max;

	ret = FUNC4(dac->dpot, &max);
	if (ret < 0) {
		FUNC0(dev, "dpot does not indicate its raw maximum value\n");
		return ret;
	}

	switch (FUNC3(dac->dpot, &val, &val2)) {
	case IIO_VAL_INT:
		return max * val;
	case IIO_VAL_FRACTIONAL:
		tmp = (unsigned long long)max * val;
		FUNC1(tmp, val2);
		return tmp;
	case IIO_VAL_FRACTIONAL_LOG2:
		tmp = val * 1000000000LL * max >> val2;
		FUNC1(tmp, 1000000000LL);
		return tmp;
	default:
		FUNC0(dev, "dpot has a scale that is too weird\n");
	}

	return -EINVAL;
}