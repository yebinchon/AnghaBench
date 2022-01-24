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
struct irq_domain {struct dpu_mdss* host_data; } ;
struct dpu_mdss {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  dpu_mdss_irq_chip ; 
 int /*<<< orphan*/  dpu_mdss_lock_key ; 
 int /*<<< orphan*/  dpu_mdss_request_key ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,struct dpu_mdss*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *domain,
		unsigned int irq, irq_hw_number_t hwirq)
{
	struct dpu_mdss *dpu_mdss = domain->host_data;

	FUNC2(irq, &dpu_mdss_lock_key, &dpu_mdss_request_key);
	FUNC0(irq, &dpu_mdss_irq_chip, handle_level_irq);
	return FUNC1(irq, dpu_mdss);
}