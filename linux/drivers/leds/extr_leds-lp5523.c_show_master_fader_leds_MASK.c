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
typedef  int u8 ;
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int LP5523_FADER_MAPPING_MASK ; 
 int LP5523_FADER_MAPPING_SHIFT ; 
 int LP5523_MAX_LEDS ; 
 scalar_t__ LP5523_REG_LED_CTRL_BASE ; 
 struct lp55xx_led* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lp55xx_chip*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				      struct device_attribute *attr,
				      char *buf)
{
	struct lp55xx_led *led = FUNC0(FUNC4(dev));
	struct lp55xx_chip *chip = led->chip;
	int i, ret, pos = 0;
	u8 val;

	FUNC2(&chip->lock);

	for (i = 0; i < LP5523_MAX_LEDS; i++) {
		ret = FUNC1(chip, LP5523_REG_LED_CTRL_BASE + i, &val);
		if (ret)
			goto leave;

		val = (val & LP5523_FADER_MAPPING_MASK)
			>> LP5523_FADER_MAPPING_SHIFT;
		if (val > 3) {
			ret = -EINVAL;
			goto leave;
		}
		buf[pos++] = val + '0';
	}
	buf[pos++] = '\n';
	ret = pos;
leave:
	FUNC3(&chip->lock);
	return ret;
}