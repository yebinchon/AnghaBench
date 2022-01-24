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
struct ts5500_dio {int /*<<< orphan*/  control_addr; int /*<<< orphan*/  control_mask; scalar_t__ no_output; scalar_t__ no_input; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 struct ts5500_priv* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct ts5500_priv *priv = FUNC0(chip);
	const struct ts5500_dio line = priv->pinout[offset];
	unsigned long flags;

	if (line.no_input)
		return -ENXIO;

	if (line.no_output)
		return 0;

	FUNC1(&priv->lock, flags);
	FUNC3(line.control_mask, line.control_addr);
	FUNC2(&priv->lock, flags);

	return 0;
}