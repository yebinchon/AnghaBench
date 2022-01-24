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
struct keystone_irq_device {int /*<<< orphan*/  chip; } ;
struct irq_domain {struct keystone_irq_device* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct keystone_irq_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *h, unsigned int virq,
				irq_hw_number_t hw)
{
	struct keystone_irq_device *kirq = h->host_data;

	FUNC1(virq, kirq);
	FUNC0(virq, &kirq->chip, handle_level_irq);
	FUNC2(virq);
	return 0;
}