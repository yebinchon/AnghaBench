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
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_gpio_priv {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct uniphier_gpio_priv* FUNC0 (struct gpio_chip*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct uniphier_gpio_priv*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip, unsigned int bank,
				     unsigned int reg, u32 mask, u32 val)
{
	struct uniphier_gpio_priv *priv = FUNC0(chip);

	if (!mask)
		return;

	FUNC2(priv, FUNC1(bank) + reg,
				 mask, val);
}