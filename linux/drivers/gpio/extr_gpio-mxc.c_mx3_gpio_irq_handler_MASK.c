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
struct mxc_gpio_port {scalar_t__ base; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPIO_IMR ; 
 scalar_t__ GPIO_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct mxc_gpio_port* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mxc_gpio_port*,int) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	u32 irq_stat;
	struct mxc_gpio_port *port = FUNC3(desc);
	struct irq_chip *chip = FUNC2(desc);

	FUNC0(chip, desc);

	irq_stat = FUNC5(port->base + GPIO_ISR) & FUNC5(port->base + GPIO_IMR);

	FUNC4(port, irq_stat);

	FUNC1(chip, desc);
}