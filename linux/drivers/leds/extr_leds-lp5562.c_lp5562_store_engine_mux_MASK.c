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
struct lp55xx_chip {int engine_idx; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  enum lp55xx_engine_index { ____Placeholder_lp55xx_engine_index } lp55xx_engine_index ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  LP5562_ENG1_FOR_W ; 
 int /*<<< orphan*/  LP5562_ENG2_FOR_W ; 
 int /*<<< orphan*/  LP5562_ENG3_FOR_W ; 
 int /*<<< orphan*/  LP5562_ENG_FOR_RGB_M ; 
 int /*<<< orphan*/  LP5562_ENG_FOR_W_M ; 
 int /*<<< orphan*/  LP5562_ENG_SEL_RGB ; 
 int /*<<< orphan*/  LP5562_REG_ENG_SEL ; 
#define  LP55XX_ENGINE_1 130 
#define  LP55XX_ENGINE_2 129 
#define  LP55XX_ENGINE_3 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct lp55xx_led* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lp55xx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t len)
{
	struct lp55xx_led *led = FUNC1(FUNC6(dev));
	struct lp55xx_chip *chip = led->chip;
	u8 mask;
	u8 val;

	/* LED map
	 * R ... Engine 1 (fixed)
	 * G ... Engine 2 (fixed)
	 * B ... Engine 3 (fixed)
	 * W ... Engine 1 or 2 or 3
	 */

	if (FUNC5(buf, "RGB")) {
		mask = LP5562_ENG_FOR_RGB_M;
		val = LP5562_ENG_SEL_RGB;
	} else if (FUNC5(buf, "W")) {
		enum lp55xx_engine_index idx = chip->engine_idx;

		mask = LP5562_ENG_FOR_W_M;
		switch (idx) {
		case LP55XX_ENGINE_1:
			val = LP5562_ENG1_FOR_W;
			break;
		case LP55XX_ENGINE_2:
			val = LP5562_ENG2_FOR_W;
			break;
		case LP55XX_ENGINE_3:
			val = LP5562_ENG3_FOR_W;
			break;
		default:
			return -EINVAL;
		}

	} else {
		FUNC0(dev, "choose RGB or W\n");
		return -EINVAL;
	}

	FUNC3(&chip->lock);
	FUNC2(chip, LP5562_REG_ENG_SEL, mask, val);
	FUNC4(&chip->lock);

	return len;
}