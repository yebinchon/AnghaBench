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
struct ts4900_gpio_priv {int /*<<< orphan*/  regmap; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS4900_GPIO_OUT ; 
 struct ts4900_gpio_priv* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned int offset,
			    int value)
{
	struct ts4900_gpio_priv *priv = FUNC0(chip);

	if (value)
		FUNC1(priv->regmap, offset, TS4900_GPIO_OUT,
				   TS4900_GPIO_OUT);
	else
		FUNC1(priv->regmap, offset, TS4900_GPIO_OUT, 0);
}