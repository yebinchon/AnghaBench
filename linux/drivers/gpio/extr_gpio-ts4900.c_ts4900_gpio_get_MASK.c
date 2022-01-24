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
struct ts4900_gpio_priv {unsigned int input_bit; int /*<<< orphan*/  regmap; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct ts4900_gpio_priv* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned int offset)
{
	struct ts4900_gpio_priv *priv = FUNC0(chip);
	unsigned int reg;

	FUNC1(priv->regmap, offset, &reg);

	return !!(reg & priv->input_bit);
}