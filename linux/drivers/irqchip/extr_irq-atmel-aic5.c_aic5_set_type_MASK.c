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
struct irq_data {unsigned int hwirq; struct irq_domain* domain; } ;
struct irq_chip_generic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_AIC5_SMR ; 
 int /*<<< orphan*/  AT91_AIC5_SSR ; 
 int FUNC0 (struct irq_data*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*) ; 
 struct irq_chip_generic* FUNC3 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct irq_chip_generic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_chip_generic*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct irq_data *d, unsigned type)
{
	struct irq_domain *domain = d->domain;
	struct irq_chip_generic *bgc = FUNC3(domain, 0);
	unsigned int smr;
	int ret;

	FUNC1(bgc);
	FUNC5(bgc, d->hwirq, AT91_AIC5_SSR);
	smr = FUNC4(bgc, AT91_AIC5_SMR);
	ret = FUNC0(d, type, &smr);
	if (!ret)
		FUNC5(bgc, smr, AT91_AIC5_SMR);
	FUNC2(bgc);

	return ret;
}