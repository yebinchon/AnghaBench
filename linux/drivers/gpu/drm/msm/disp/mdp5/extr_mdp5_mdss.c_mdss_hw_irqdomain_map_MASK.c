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
struct mdp5_mdss {int dummy; } ;
struct irq_domain {struct mdp5_mdss* host_data; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int EPERM ; 
 int VALID_IRQS ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct mdp5_mdss*) ; 
 int /*<<< orphan*/  mdss_hw_irq_chip ; 

__attribute__((used)) static int FUNC2(struct irq_domain *d, unsigned int irq,
				 irq_hw_number_t hwirq)
{
	struct mdp5_mdss *mdp5_mdss = d->host_data;

	if (!(VALID_IRQS & (1 << hwirq)))
		return -EPERM;

	FUNC0(irq, &mdss_hw_irq_chip, handle_level_irq);
	FUNC1(irq, mdp5_mdss);

	return 0;
}