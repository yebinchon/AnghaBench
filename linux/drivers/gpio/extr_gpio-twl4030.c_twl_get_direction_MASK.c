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
struct gpio_twl4030_priv {int /*<<< orphan*/  mutex; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int TWL4030_GPIO_MAX ; 
 struct gpio_twl4030_priv* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct gpio_twl4030_priv *priv = FUNC0(chip);
	/*
	 * Default 0 = output
	 * LED GPIOs >= TWL4030_GPIO_MAX are always output
	 */
	int ret = 0;

	FUNC1(&priv->mutex);
	if (offset < TWL4030_GPIO_MAX) {
		ret = FUNC3(offset);
		if (ret) {
			FUNC2(&priv->mutex);
			return ret;
		}
	}
	FUNC2(&priv->mutex);

	return ret;
}