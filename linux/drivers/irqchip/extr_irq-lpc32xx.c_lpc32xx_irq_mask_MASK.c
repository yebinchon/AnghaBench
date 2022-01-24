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
struct lpc32xx_irq_chip {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC32XX_INTC_MASK ; 
 struct lpc32xx_irq_chip* FUNC1 (struct irq_data*) ; 
 int FUNC2 (struct lpc32xx_irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc32xx_irq_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct lpc32xx_irq_chip *ic = FUNC1(d);
	u32 val, mask = FUNC0(d->hwirq);

	val = FUNC2(ic, LPC32XX_INTC_MASK) & ~mask;
	FUNC3(ic, LPC32XX_INTC_MASK, val);
}