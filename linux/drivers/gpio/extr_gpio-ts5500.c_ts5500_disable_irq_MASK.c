#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct ts5500_priv {int hwirq; int /*<<< orphan*/  lock; TYPE_1__ gpio_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ts5500_priv *priv)
{
	unsigned long flags;

	FUNC2(&priv->lock, flags);
	if (priv->hwirq == 7)
		FUNC4(FUNC0(7), 0x7a); /* DIO1_13 on IRQ7 */
	else if (priv->hwirq == 6)
		FUNC4(FUNC0(7), 0x7d); /* DIO2_13 on IRQ6 */
	else if (priv->hwirq == 1)
		FUNC4(FUNC0(6), 0x7d); /* LCD_RS on IRQ1 */
	else
		FUNC1(priv->gpio_chip.parent, "invalid hwirq %d\n",
			priv->hwirq);
	FUNC3(&priv->lock, flags);
}