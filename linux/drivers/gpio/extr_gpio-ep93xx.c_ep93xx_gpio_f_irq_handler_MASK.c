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
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int EP93XX_GPIO_F_IRQ_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 unsigned int FUNC4 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC5(struct irq_desc *desc)
{
	/*
	 * map discontiguous hw irq range to continuous sw irq range:
	 *
	 *  IRQ_EP93XX_GPIO{0..7}MUX -> EP93XX_GPIO_LINE_F{0..7}
	 */
	struct irq_chip *irqchip = FUNC3(desc);
	unsigned int irq = FUNC4(desc);
	int port_f_idx = ((irq + 1) & 7) ^ 4; /* {19..22,47..50} -> {0..7} */
	int gpio_irq = EP93XX_GPIO_F_IRQ_BASE + port_f_idx;

	FUNC0(irqchip, desc);
	FUNC2(gpio_irq);
	FUNC1(irqchip, desc);
}