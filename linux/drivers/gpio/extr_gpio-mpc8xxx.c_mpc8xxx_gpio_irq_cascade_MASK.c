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
struct gpio_chip {unsigned int (* read_reg ) (scalar_t__) ;} ;
struct mpc8xxx_gpio_chip {int /*<<< orphan*/  irq; scalar_t__ regs; struct gpio_chip gc; } ;
struct irq_desc {int /*<<< orphan*/  irq_data; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_eoi ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ GPIO_IER ; 
 scalar_t__ GPIO_IMR ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct mpc8xxx_gpio_chip* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct irq_desc *desc)
{
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC3(desc);
	struct irq_chip *chip = FUNC2(desc);
	struct gpio_chip *gc = &mpc8xxx_gc->gc;
	unsigned int mask;

	mask = gc->read_reg(mpc8xxx_gc->regs + GPIO_IER)
		& gc->read_reg(mpc8xxx_gc->regs + GPIO_IMR);
	if (mask)
		FUNC1(FUNC4(mpc8xxx_gc->irq,
						     32 - FUNC0(mask)));
	if (chip->irq_eoi)
		chip->irq_eoi(&desc->irq_data);
}