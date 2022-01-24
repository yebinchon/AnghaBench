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
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct max77693_led_device {scalar_t__ iout_joint; int /*<<< orphan*/  iout_flash_max; struct regmap* regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FLASH ; 
 int FLED1 ; 
 int FLED2 ; 
 int /*<<< orphan*/  MAX77693_LED_REG_IFLASH1 ; 
 int /*<<< orphan*/  MAX77693_LED_REG_IFLASH2 ; 
 int /*<<< orphan*/  FUNC0 (struct max77693_led_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct max77693_led_device *led,
					int fled_id,
					u32 micro_amp)
{
	struct regmap *rmap = led->regmap;
	u8 iout1_reg, iout2_reg;
	u32 iout[2];
	int ret = -EINVAL;

	FUNC0(led, fled_id, FLASH, micro_amp,
					led->iout_flash_max, iout);

	if (fled_id == FLED1 || led->iout_joint) {
		iout1_reg = FUNC1(iout[FLED1]);
		ret = FUNC2(rmap, MAX77693_LED_REG_IFLASH1,
							iout1_reg);
		if (ret < 0)
			return ret;
	}
	if (fled_id == FLED2 || led->iout_joint) {
		iout2_reg = FUNC1(iout[FLED2]);
		ret = FUNC2(rmap, MAX77693_LED_REG_IFLASH2,
							iout2_reg);
	}

	return ret;
}