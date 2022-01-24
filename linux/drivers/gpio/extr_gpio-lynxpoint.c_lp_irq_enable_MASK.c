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
struct lp_gpio {int /*<<< orphan*/  lock; int /*<<< orphan*/  chip; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  LP_INT_ENABLE ; 
 struct lp_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (unsigned long) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int FUNC4 (struct irq_data*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC3(d);
	struct lp_gpio *lg = FUNC1(gc);
	u32 hwirq = FUNC4(d);
	unsigned long reg = FUNC5(&lg->chip, hwirq, LP_INT_ENABLE);
	unsigned long flags;

	FUNC7(&lg->lock, flags);
	FUNC6(FUNC2(reg) | FUNC0(hwirq % 32), reg);
	FUNC8(&lg->lock, flags);
}