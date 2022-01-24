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
struct ts5500_priv {struct ts5500_dio* pinout; } ;
struct ts5500_dio {int value_mask; int /*<<< orphan*/  value_addr; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct ts5500_priv* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct ts5500_priv *priv = FUNC0(chip);
	const struct ts5500_dio line = priv->pinout[offset];

	return !!(FUNC1(line.value_addr) & line.value_mask);
}