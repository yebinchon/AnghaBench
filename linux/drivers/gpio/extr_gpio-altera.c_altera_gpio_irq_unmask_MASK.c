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
struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct irq_data {int dummy; } ;
struct altera_gpio_chip {int /*<<< orphan*/  gpio_lock; struct of_mm_gpio_chip mmchip; } ;

/* Variables and functions */
 scalar_t__ ALTERA_GPIO_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct altera_gpio_chip* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct irq_data *d)
{
	struct altera_gpio_chip *altera_gc;
	struct of_mm_gpio_chip *mm_gc;
	unsigned long flags;
	u32 intmask;

	altera_gc = FUNC1(FUNC2(d));
	mm_gc = &altera_gc->mmchip;

	FUNC4(&altera_gc->gpio_lock, flags);
	intmask = FUNC6(mm_gc->regs + ALTERA_GPIO_IRQ_MASK);
	/* Set ALTERA_GPIO_IRQ_MASK bit to unmask */
	intmask |= FUNC0(FUNC3(d));
	FUNC7(intmask, mm_gc->regs + ALTERA_GPIO_IRQ_MASK);
	FUNC5(&altera_gc->gpio_lock, flags);
}