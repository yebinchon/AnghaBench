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
struct zynq_gpio {scalar_t__ base_addr; } ;
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 struct zynq_gpio* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int*,unsigned int*,struct zynq_gpio*) ; 

__attribute__((used)) static void FUNC6(struct irq_data *irq_data)
{
	unsigned int device_pin_num, bank_num, bank_pin_num;
	struct zynq_gpio *gpio =
		FUNC2(FUNC3(irq_data));

	device_pin_num = irq_data->hwirq;
	FUNC5(device_pin_num, &bank_num, &bank_pin_num, gpio);
	FUNC4(FUNC0(bank_pin_num),
		       gpio->base_addr + FUNC1(bank_num));
}