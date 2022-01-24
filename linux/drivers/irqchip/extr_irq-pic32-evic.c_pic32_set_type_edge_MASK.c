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
struct irq_data {scalar_t__ hwirq; } ;
struct evic_chip_data {scalar_t__* ext_irqs; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EBADR ; 
 int IRQ_SET_MASK_OK ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,unsigned int) ; 
 struct evic_chip_data* FUNC2 (struct irq_data*) ; 
 int FUNC3 (int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct irq_data *data,
			       unsigned int flow_type)
{
	struct evic_chip_data *priv = FUNC2(data);
	int ret;
	int i;

	if (!(flow_type & IRQ_TYPE_EDGE_BOTH))
		return -EBADR;

	/* set polarity for external interrupts only */
	for (i = 0; i < FUNC0(priv->ext_irqs); i++) {
		if (priv->ext_irqs[i] == data->hwirq) {
			ret = FUNC3(i, flow_type);
			if (ret)
				return ret;
		}
	}

	FUNC1(data, flow_type);

	return IRQ_SET_MASK_OK;
}