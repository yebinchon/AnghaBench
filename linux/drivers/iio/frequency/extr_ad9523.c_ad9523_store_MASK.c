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
typedef  int /*<<< orphan*/  u32 ;
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad9523_state {int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  AD9523_EEPROM 129 
#define  AD9523_SYNC 128 
 int ENODEV ; 
 int FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 struct ad9523_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int*) ; 
 struct iio_dev_attr* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC2(dev);
	struct iio_dev_attr *this_attr = FUNC7(attr);
	struct ad9523_state *st = FUNC3(indio_dev);
	bool state;
	int ret;

	ret = FUNC6(buf, &state);
	if (ret < 0)
		return ret;

	if (!state)
		return len;

	FUNC4(&st->lock);
	switch ((u32)this_attr->address) {
	case AD9523_SYNC:
		ret = FUNC1(indio_dev);
		break;
	case AD9523_EEPROM:
		ret = FUNC0(indio_dev);
		break;
	default:
		ret = -ENODEV;
	}
	FUNC5(&st->lock);

	return ret ? ret : len;
}