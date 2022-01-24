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
struct gpio_twl4030_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  direction; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int TWL4030_GPIO_MAX ; 
 struct gpio_twl4030_priv* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset, int value)
{
	struct gpio_twl4030_priv *priv = FUNC1(chip);
	int ret = 0;

	FUNC2(&priv->mutex);
	if (offset < TWL4030_GPIO_MAX) {
		ret = FUNC4(offset, 0);
		if (ret) {
			FUNC3(&priv->mutex);
			return ret;
		}
	}

	/*
	 *  LED gpios i.e. offset >= TWL4030_GPIO_MAX are always output
	 */

	priv->direction |= FUNC0(offset);
	FUNC3(&priv->mutex);

	FUNC5(chip, offset, value);

	return ret;
}