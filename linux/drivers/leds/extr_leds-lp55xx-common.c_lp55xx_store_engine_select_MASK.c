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
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {unsigned long engine_idx; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
#define  LP55XX_ENGINE_1 130 
#define  LP55XX_ENGINE_2 129 
#define  LP55XX_ENGINE_3 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct lp55xx_led* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC3 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf, size_t len)
{
	struct lp55xx_led *led = FUNC1(FUNC6(dev));
	struct lp55xx_chip *chip = led->chip;
	unsigned long val;
	int ret;

	if (FUNC2(buf, 0, &val))
		return -EINVAL;

	/* select the engine to be run */

	switch (val) {
	case LP55XX_ENGINE_1:
	case LP55XX_ENGINE_2:
	case LP55XX_ENGINE_3:
		FUNC4(&chip->lock);
		chip->engine_idx = val;
		ret = FUNC3(chip);
		FUNC5(&chip->lock);
		break;
	default:
		FUNC0(dev, "%lu: invalid engine index. (1, 2, 3)\n", val);
		return -EINVAL;
	}

	if (ret) {
		FUNC0(dev, "request firmware err: %d\n", ret);
		return ret;
	}

	return len;
}