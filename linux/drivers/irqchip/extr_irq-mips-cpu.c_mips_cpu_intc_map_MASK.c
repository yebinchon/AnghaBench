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
struct irq_domain {int dummy; } ;
struct irq_chip {int dummy; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ cpu_has_mipsmt ; 
 scalar_t__ cpu_has_vint ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 
 struct irq_chip mips_cpu_irq_controller ; 
 struct irq_chip mips_mt_cpu_irq_controller ; 
 int /*<<< orphan*/  plat_irq_dispatch ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct irq_domain *d, unsigned int irq,
			     irq_hw_number_t hw)
{
	struct irq_chip *chip;

	if (hw < 2 && cpu_has_mipsmt) {
		/* Software interrupts are used for MT/CMT IPI */
		chip = &mips_mt_cpu_irq_controller;
	} else {
		chip = &mips_cpu_irq_controller;
	}

	if (cpu_has_vint)
		FUNC1(hw, plat_irq_dispatch);

	FUNC0(irq, chip, handle_percpu_irq);

	return 0;
}