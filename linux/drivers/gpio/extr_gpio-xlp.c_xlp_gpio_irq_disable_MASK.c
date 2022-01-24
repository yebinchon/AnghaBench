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
struct xlp_gpio_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  gpio_enabled_mask; int /*<<< orphan*/  gpio_intr_en; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xlp_gpio_priv* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct gpio_chip *gc  = FUNC2(d);
	struct xlp_gpio_priv *priv = FUNC1(gc);
	unsigned long flags;

	FUNC3(&priv->lock, flags);
	FUNC5(priv->gpio_intr_en, d->hwirq, 0x0);
	FUNC0(d->hwirq, priv->gpio_enabled_mask);
	FUNC4(&priv->lock, flags);
}