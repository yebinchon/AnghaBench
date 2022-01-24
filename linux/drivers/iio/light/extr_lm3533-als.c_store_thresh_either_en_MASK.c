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
struct lm3533_als {int /*<<< orphan*/  flags; int /*<<< orphan*/  zone; int /*<<< orphan*/  irq; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  LM3533_ALS_FLAG_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 struct lm3533_als* FUNC3 (struct iio_dev*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct iio_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC2(dev);
	struct lm3533_als *als = FUNC3(indio_dev);
	unsigned long enable;
	bool int_enabled;
	u8 zone;
	int ret;

	if (!als->irq)
		return -EBUSY;

	if (FUNC4(buf, 0, &enable))
		return -EINVAL;

	int_enabled = FUNC8(LM3533_ALS_FLAG_INT_ENABLED, &als->flags);

	if (enable && !int_enabled) {
		ret = FUNC5(indio_dev, &zone);
		if (ret)
			return ret;

		FUNC0(&als->zone, zone);

		FUNC7(LM3533_ALS_FLAG_INT_ENABLED, &als->flags);
	}

	ret = FUNC6(indio_dev, enable);
	if (ret) {
		if (!int_enabled)
			FUNC1(LM3533_ALS_FLAG_INT_ENABLED, &als->flags);

		return ret;
	}

	if (!enable)
		FUNC1(LM3533_ALS_FLAG_INT_ENABLED, &als->flags);

	return len;
}