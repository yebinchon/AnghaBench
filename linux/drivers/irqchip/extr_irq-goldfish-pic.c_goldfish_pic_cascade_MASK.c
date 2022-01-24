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
struct irq_chip {int dummy; } ;
struct goldfish_pic_data {int /*<<< orphan*/  irq_domain; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ GFPIC_REG_IRQ_PENDING ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct goldfish_pic_data* FUNC5 (struct irq_desc*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct irq_desc *desc)
{
	struct goldfish_pic_data *gfpic = FUNC5(desc);
	struct irq_chip *host_chip = FUNC4(desc);
	u32 pending, hwirq, virq;

	FUNC1(host_chip, desc);

	pending = FUNC7(gfpic->base + GFPIC_REG_IRQ_PENDING);
	while (pending) {
		hwirq = FUNC0(pending);
		virq = FUNC6(gfpic->irq_domain, hwirq);
		FUNC3(virq);
		pending &= ~(1 << hwirq);
	}

	FUNC2(host_chip, desc);
}