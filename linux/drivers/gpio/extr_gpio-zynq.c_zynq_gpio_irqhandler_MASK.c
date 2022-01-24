#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct zynq_gpio {scalar_t__ base_addr; TYPE_1__* p_data; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct TYPE_2__ {unsigned int max_bank; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip*,struct irq_desc*) ; 
 struct zynq_gpio* FUNC4 (int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_desc*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct zynq_gpio*,unsigned int,int) ; 

__attribute__((used)) static void FUNC9(struct irq_desc *desc)
{
	u32 int_sts, int_enb;
	unsigned int bank_num;
	struct zynq_gpio *gpio =
		FUNC4(FUNC6(desc));
	struct irq_chip *irqchip = FUNC5(desc);

	FUNC2(irqchip, desc);

	for (bank_num = 0; bank_num < gpio->p_data->max_bank; bank_num++) {
		int_sts = FUNC7(gpio->base_addr +
					FUNC1(bank_num));
		int_enb = FUNC7(gpio->base_addr +
					FUNC0(bank_num));
		FUNC8(gpio, bank_num, int_sts & ~int_enb);
	}

	FUNC3(irqchip, desc);
}