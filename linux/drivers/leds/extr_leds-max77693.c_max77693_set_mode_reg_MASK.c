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
struct regmap {int dummy; } ;
struct max77693_led_device {struct regmap* regmap; } ;

/* Variables and functions */
 int FLASH_EN_FLASH ; 
 int FLASH_EN_ON ; 
 int FUNC0 (int) ; 
 int FLASH_EN_TORCH ; 
 int FLED1 ; 
 int FLED2 ; 
 int /*<<< orphan*/  MAX77693_LED_REG_FLASH_EN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct max77693_led_device *led, u8 mode)
{
	struct regmap *rmap = led->regmap;
	int ret, v = 0, i;

	for (i = FLED1; i <= FLED2; ++i) {
		if (mode & FUNC3(i))
			v |= FLASH_EN_ON << FUNC4(i);

		if (mode & FUNC1(i)) {
			v |= FLASH_EN_ON << FUNC0(i);
		} else if (mode & FUNC2(i)) {
			v |= FLASH_EN_FLASH << FUNC0(i);
			/*
			 * Enable hw triggering also for torch mode, as some
			 * camera sensors use torch led to fathom ambient light
			 * conditions before strobing the flash.
			 */
			v |= FLASH_EN_TORCH << FUNC4(i);
		}
	}

	/* Reset the register only prior setting flash modes */
	if (mode & ~(FUNC3(FLED1) | FUNC3(FLED2))) {
		ret = FUNC5(rmap, MAX77693_LED_REG_FLASH_EN, 0);
		if (ret < 0)
			return ret;
	}

	return FUNC5(rmap, MAX77693_LED_REG_FLASH_EN, v);
}