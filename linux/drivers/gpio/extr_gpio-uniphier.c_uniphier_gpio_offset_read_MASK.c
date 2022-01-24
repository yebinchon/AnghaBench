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
typedef  int u32 ;
struct uniphier_gpio_priv {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct uniphier_gpio_priv* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int*,int*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
				     unsigned int offset, unsigned int reg)
{
	struct uniphier_gpio_priv *priv = FUNC0(chip);
	unsigned int bank, reg_offset;
	u32 mask;

	FUNC3(offset, &bank, &mask);
	reg_offset = FUNC2(bank) + reg;

	return !!(FUNC1(priv->regs + reg_offset) & mask);
}