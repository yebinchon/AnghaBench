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
struct gpio_chip {int dummy; } ;
struct altr_a10sr_gpio {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ ALTR_A10SR_LED_VALID_SHIFT ; 
 int /*<<< orphan*/  ALTR_A10SR_PBDSW_REG ; 
 int FUNC0 (scalar_t__) ; 
 struct altr_a10sr_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct altr_a10sr_gpio *gpio = FUNC1(chip);
	int ret, val;

	ret = FUNC2(gpio->regmap, ALTR_A10SR_PBDSW_REG, &val);
	if (ret < 0)
		return ret;

	return !!(val & FUNC0(offset - ALTR_A10SR_LED_VALID_SHIFT));
}