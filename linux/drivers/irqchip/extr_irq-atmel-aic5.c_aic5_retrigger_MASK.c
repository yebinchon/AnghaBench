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
struct irq_data {int hwirq; struct irq_domain* domain; } ;
struct irq_chip_generic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_AIC5_ISCR ; 
 int /*<<< orphan*/  AT91_AIC5_SSR ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 struct irq_chip_generic* FUNC2 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d)
{
	struct irq_domain *domain = d->domain;
	struct irq_chip_generic *bgc = FUNC2(domain, 0);

	/* Enable interrupt on AIC5 */
	FUNC0(bgc);
	FUNC3(bgc, d->hwirq, AT91_AIC5_SSR);
	FUNC3(bgc, 1, AT91_AIC5_ISCR);
	FUNC1(bgc);

	return 0;
}