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
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LP5523_REG_MASTER_FADER_BASE ; 
 struct lp55xx_led* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct lp55xx_chip*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t len, int nr)
{
	struct lp55xx_led *led = FUNC0(FUNC5(dev));
	struct lp55xx_chip *chip = led->chip;
	int ret;
	unsigned long val;

	if (FUNC1(buf, 0, &val))
		return -EINVAL;

	if (val > 0xff)
		return -EINVAL;

	FUNC3(&chip->lock);
	ret = FUNC2(chip, LP5523_REG_MASTER_FADER_BASE + nr - 1,
			   (u8)val);
	FUNC4(&chip->lock);

	if (ret == 0)
		ret = len;

	return ret;
}