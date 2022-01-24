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
struct i2c_adapter {struct irq_domain* host_notify_domain; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ I2C_ADDR_7BITS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct i2c_adapter *adap)
{
	struct irq_domain *domain = adap->host_notify_domain;
	irq_hw_number_t hwirq;

	if (!domain)
		return;

	for (hwirq = 0 ; hwirq < I2C_ADDR_7BITS_COUNT ; hwirq++)
		FUNC0(FUNC2(domain, hwirq));

	FUNC1(domain);
	adap->host_notify_domain = NULL;
}