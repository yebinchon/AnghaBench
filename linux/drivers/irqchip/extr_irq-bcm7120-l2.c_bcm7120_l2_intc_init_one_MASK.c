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
struct device_node {int dummy; } ;
struct bcm7120_l2_intc_data {unsigned int n_words; scalar_t__ map_mask_prop; struct bcm7120_l1_intc_data* l1_data; } ;
struct bcm7120_l1_intc_data {int* irq_map_mask; struct bcm7120_l2_intc_data* b; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  bcm7120_l2_intc_irq_handle ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct bcm7120_l1_intc_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct device_node *dn,
					struct bcm7120_l2_intc_data *data,
					int irq, u32 *valid_mask)
{
	struct bcm7120_l1_intc_data *l1_data = &data->l1_data[irq];
	int parent_irq;
	unsigned int idx;

	parent_irq = FUNC1(dn, irq);
	if (!parent_irq) {
		FUNC3("failed to map interrupt %d\n", irq);
		return -EINVAL;
	}

	/* For multiple parent IRQs with multiple words, this looks like:
	 * <irq0_w0 irq0_w1 irq1_w0 irq1_w1 ...>
	 *
	 * We need to associate a given parent interrupt with its corresponding
	 * map_mask in order to mask the status register with it because we
	 * have the same handler being called for multiple parent interrupts.
	 *
	 * This is typically something needed on BCM7xxx (STB chips).
	 */
	for (idx = 0; idx < data->n_words; idx++) {
		if (data->map_mask_prop) {
			l1_data->irq_map_mask[idx] |=
				FUNC0(data->map_mask_prop +
					     irq * data->n_words + idx);
		} else {
			l1_data->irq_map_mask[idx] = 0xffffffff;
		}
		valid_mask[idx] |= l1_data->irq_map_mask[idx];
	}

	l1_data->b = data;

	FUNC2(parent_irq,
					 bcm7120_l2_intc_irq_handle, l1_data);
	return 0;
}