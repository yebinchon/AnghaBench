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
 int ENXIO ; 
#define  LM3533_ATTR_TYPE_HYSTERESIS 131 
#define  LM3533_ATTR_TYPE_TARGET 130 
#define  LM3533_ATTR_TYPE_THRESH_FALLING 129 
#define  LM3533_ATTR_TYPE_THRESH_RAISING 128 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct lm3533_als_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct lm3533_als_attribute *als_attr = FUNC5(attr);
	u8 val;
	int ret;

	switch (als_attr->type) {
	case LM3533_ATTR_TYPE_HYSTERESIS:
		ret = FUNC1(indio_dev, als_attr->val1,
									&val);
		break;
	case LM3533_ATTR_TYPE_TARGET:
		ret = FUNC2(indio_dev, als_attr->val1,
							als_attr->val2, &val);
		break;
	case LM3533_ATTR_TYPE_THRESH_FALLING:
		ret = FUNC3(indio_dev, als_attr->val1,
								false, &val);
		break;
	case LM3533_ATTR_TYPE_THRESH_RAISING:
		ret = FUNC3(indio_dev, als_attr->val1,
								true, &val);
		break;
	default:
		ret = -ENXIO;
	}

	if (ret)
		return ret;

	return FUNC4(buf, PAGE_SIZE, "%u\n", val);
}