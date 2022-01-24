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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int /*<<< orphan*/  (* write_reg ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
struct brcmstb_gpio_priv {scalar_t__ reg_base; } ;
struct brcmstb_gpio_bank {int /*<<< orphan*/  id; struct brcmstb_gpio_priv* parent_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct brcmstb_gpio_bank*) ; 
 struct brcmstb_gpio_bank* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC4(d);
	struct brcmstb_gpio_bank *bank = FUNC3(gc);
	struct brcmstb_gpio_priv *priv = bank->parent_priv;
	u32 mask = FUNC0(FUNC2(d->hwirq, bank));

	gc->write_reg(priv->reg_base + FUNC1(bank->id), mask);
}