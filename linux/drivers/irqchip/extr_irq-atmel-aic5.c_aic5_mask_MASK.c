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
struct irq_data {int hwirq; int /*<<< orphan*/  mask; struct irq_domain* domain; } ;
struct irq_chip_generic {int /*<<< orphan*/  mask_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_AIC5_IDCR ; 
 int /*<<< orphan*/  AT91_AIC5_SSR ; 
 struct irq_chip_generic* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*) ; 
 struct irq_chip_generic* FUNC3 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_chip_generic*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct irq_domain *domain = d->domain;
	struct irq_chip_generic *bgc = FUNC3(domain, 0);
	struct irq_chip_generic *gc = FUNC0(d);

	/*
	 * Disable interrupt on AIC5. We always take the lock of the
	 * first irq chip as all chips share the same registers.
	 */
	FUNC1(bgc);
	FUNC4(gc, d->hwirq, AT91_AIC5_SSR);
	FUNC4(gc, 1, AT91_AIC5_IDCR);
	gc->mask_cache &= ~d->mask;
	FUNC2(bgc);
}