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
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  IRQ_TYPE_LEVEL_HIGH ; 
 int /*<<< orphan*/  NDS32_SR_INT_TRIGGER ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ativic32_chip ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct irq_data* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *id, unsigned int virq,
				  irq_hw_number_t hw)
{

	unsigned long int_trigger_type;
	u32 type;
	struct irq_data *irq_data;
	int_trigger_type = FUNC1(NDS32_SR_INT_TRIGGER);
	irq_data = FUNC2(virq);
	if (!irq_data)
		return -EINVAL;

	if (int_trigger_type & (FUNC0(hw))) {
		FUNC3(virq, &ativic32_chip, handle_edge_irq);
		type = IRQ_TYPE_EDGE_RISING;
	} else {
		FUNC3(virq, &ativic32_chip, handle_level_irq);
		type = IRQ_TYPE_LEVEL_HIGH;
	}

	FUNC4(irq_data, type);
	return 0;
}