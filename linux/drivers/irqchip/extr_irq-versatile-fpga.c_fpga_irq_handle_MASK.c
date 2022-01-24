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
struct irq_desc {int dummy; } ;
struct fpga_irq_data {int /*<<< orphan*/  domain; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct fpga_irq_data* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct fpga_irq_data *f = FUNC3(desc);
	u32 status = FUNC5(f->base + IRQ_STATUS);

	if (status == 0) {
		FUNC0(desc);
		return;
	}

	do {
		unsigned int irq = FUNC1(status) - 1;

		status &= ~(1 << irq);
		FUNC2(FUNC4(f->domain, irq));
	} while (status);
}