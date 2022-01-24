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
struct irq_domain {int /*<<< orphan*/  host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  bcm_gpio_irq_chip ; 
 int /*<<< orphan*/  gpio_lock_class ; 
 int /*<<< orphan*/  gpio_request_class ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *d, unsigned int irq,
				 irq_hw_number_t hwirq)
{
	int ret;

	ret = FUNC1(irq, d->host_data);
	if (ret < 0)
		return ret;
	FUNC2(irq, &gpio_lock_class, &gpio_request_class);
	FUNC0(irq, &bcm_gpio_irq_chip, handle_simple_irq);
	FUNC3(irq);

	return 0;
}