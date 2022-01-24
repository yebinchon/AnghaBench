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
struct rmi_data {scalar_t__ rmi_irq; struct irq_domain* domain; } ;
struct irq_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct rmi_data *hdata = data;
	struct irq_domain *domain = hdata->domain;

	if (!domain)
		return;

	FUNC0(FUNC2(domain, 0));

	FUNC1(domain);
	hdata->domain = NULL;
	hdata->rmi_irq = 0;
}