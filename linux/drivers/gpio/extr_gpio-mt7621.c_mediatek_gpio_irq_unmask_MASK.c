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
struct mtk_gc {int rising; int falling; int hlevel; int llevel; int /*<<< orphan*/  lock; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_REG_FEDGE ; 
 int /*<<< orphan*/  GPIO_REG_HLVL ; 
 int /*<<< orphan*/  GPIO_REG_LLVL ; 
 int /*<<< orphan*/  GPIO_REG_REDGE ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int FUNC2 (struct mtk_gc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_gc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_gc* FUNC6 (struct gpio_chip*) ; 

__attribute__((used)) static void
FUNC7(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC1(d);
	struct mtk_gc *rg = FUNC6(gc);
	int pin = d->hwirq;
	unsigned long flags;
	u32 rise, fall, high, low;

	FUNC4(&rg->lock, flags);
	rise = FUNC2(rg, GPIO_REG_REDGE);
	fall = FUNC2(rg, GPIO_REG_FEDGE);
	high = FUNC2(rg, GPIO_REG_HLVL);
	low = FUNC2(rg, GPIO_REG_LLVL);
	FUNC3(rg, GPIO_REG_REDGE, rise | (FUNC0(pin) & rg->rising));
	FUNC3(rg, GPIO_REG_FEDGE, fall | (FUNC0(pin) & rg->falling));
	FUNC3(rg, GPIO_REG_HLVL, high | (FUNC0(pin) & rg->hlevel));
	FUNC3(rg, GPIO_REG_LLVL, low | (FUNC0(pin) & rg->llevel));
	FUNC5(&rg->lock, flags);
}