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
struct gpio_chip {int /*<<< orphan*/  bgpio_lock; int /*<<< orphan*/  (* write_reg ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read_reg ) (scalar_t__) ;} ;
struct brcmstb_gpio_priv {scalar_t__ reg_base; } ;
struct brcmstb_gpio_bank {int /*<<< orphan*/  id; struct brcmstb_gpio_priv* parent_priv; struct gpio_chip gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct brcmstb_gpio_bank*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct brcmstb_gpio_bank *bank,
		unsigned int hwirq, bool enable)
{
	struct gpio_chip *gc = &bank->gc;
	struct brcmstb_gpio_priv *priv = bank->parent_priv;
	u32 mask = FUNC0(FUNC2(hwirq, bank));
	u32 imask;
	unsigned long flags;

	FUNC3(&gc->bgpio_lock, flags);
	imask = gc->read_reg(priv->reg_base + FUNC1(bank->id));
	if (enable)
		imask |= mask;
	else
		imask &= ~mask;
	gc->write_reg(priv->reg_base + FUNC1(bank->id), imask);
	FUNC4(&gc->bgpio_lock, flags);
}