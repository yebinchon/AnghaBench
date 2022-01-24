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
struct ts5500_priv {int hwirq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ts5500_priv *priv)
{
	int ret = 0;
	unsigned long flags;

	FUNC1(&priv->lock, flags);
	if (priv->hwirq == 7)
		FUNC3(FUNC0(7), 0x7a); /* DIO1_13 on IRQ7 */
	else if (priv->hwirq == 6)
		FUNC3(FUNC0(7), 0x7d); /* DIO2_13 on IRQ6 */
	else if (priv->hwirq == 1)
		FUNC3(FUNC0(6), 0x7d); /* LCD_RS on IRQ1 */
	else
		ret = -EINVAL;
	FUNC2(&priv->lock, flags);

	return ret;
}