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
struct ts5500_priv {int /*<<< orphan*/  lock; struct ts5500_dio* pinout; } ;
struct ts5500_dio {int /*<<< orphan*/  value_addr; int /*<<< orphan*/  value_mask; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct ts5500_priv* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned offset, int val)
{
	struct ts5500_priv *priv = FUNC0(chip);
	const struct ts5500_dio line = priv->pinout[offset];
	unsigned long flags;

	FUNC1(&priv->lock, flags);
	if (val)
		FUNC4(line.value_mask, line.value_addr);
	else
		FUNC3(line.value_mask, line.value_addr);
	FUNC2(&priv->lock, flags);
}