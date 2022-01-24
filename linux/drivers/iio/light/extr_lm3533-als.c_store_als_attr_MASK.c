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
typedef  int /*<<< orphan*/  u8 ;
struct lm3533_als_attribute {int type; int /*<<< orphan*/  val1; int /*<<< orphan*/  val2; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
#define  LM3533_ATTR_TYPE_TARGET 130 
#define  LM3533_ATTR_TYPE_THRESH_FALLING 129 
#define  LM3533_ATTR_TYPE_THRESH_RAISING 128 
 struct iio_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct lm3533_als_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct lm3533_als_attribute *als_attr = FUNC4(attr);
	u8 val;
	int ret;

	if (FUNC1(buf, 0, &val))
		return -EINVAL;

	switch (als_attr->type) {
	case LM3533_ATTR_TYPE_TARGET:
		ret = FUNC2(indio_dev, als_attr->val1,
							als_attr->val2, val);
		break;
	case LM3533_ATTR_TYPE_THRESH_FALLING:
		ret = FUNC3(indio_dev, als_attr->val1,
								false, val);
		break;
	case LM3533_ATTR_TYPE_THRESH_RAISING:
		ret = FUNC3(indio_dev, als_attr->val1,
								true, val);
		break;
	default:
		ret = -ENXIO;
	}

	if (ret)
		return ret;

	return len;
}