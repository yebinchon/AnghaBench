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
struct lp55xx_chip {int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct lp55xx_led* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct lp55xx_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf, size_t len)
{
	struct lp55xx_led *led = FUNC0(FUNC5(dev));
	struct lp55xx_chip *chip = led->chip;
	unsigned long val;

	if (FUNC1(buf, 0, &val))
		return -EINVAL;

	/* run or stop the selected engine */

	if (val <= 0) {
		FUNC2(chip, false);
		return len;
	}

	FUNC3(&chip->lock);
	FUNC2(chip, true);
	FUNC4(&chip->lock);

	return len;
}