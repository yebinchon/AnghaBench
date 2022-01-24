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
struct pdc_intc_priv {int nr_syswakes; int /*<<< orphan*/  domain; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDC_IRQ_ENABLE ; 
 int /*<<< orphan*/  PDC_IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct irq_desc*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct pdc_intc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(struct irq_desc *desc)
{
	struct pdc_intc_priv *priv;
	unsigned int syswake, irq_no;
	unsigned int status;

	priv = (struct pdc_intc_priv *)FUNC1(desc);

	status = FUNC3(priv, PDC_IRQ_STATUS) &
		 FUNC3(priv, PDC_IRQ_ENABLE);
	status &= (1 << priv->nr_syswakes) - 1;

	for (syswake = 0; status; status >>= 1, ++syswake) {
		/* Has this sys_wake triggered? */
		if (!(status & 1))
			continue;

		irq_no = FUNC2(priv->domain,
					   FUNC4(syswake));
		FUNC0(irq_no);
	}
}