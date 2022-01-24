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
struct tangox_irq_chip {scalar_t__ ctl; } ;
struct irq_domain {struct tangox_irq_chip* host_data; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ IRQ_CTL_HI ; 
 scalar_t__ IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 unsigned int FUNC2 (struct tangox_irq_chip*,scalar_t__) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 struct irq_domain* FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_domain*,unsigned int,int) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct irq_domain *dom = FUNC4(desc);
	struct irq_chip *host_chip = FUNC3(desc);
	struct tangox_irq_chip *chip = dom->host_data;
	unsigned int status_lo, status_hi;

	FUNC0(host_chip, desc);

	status_lo = FUNC2(chip, chip->ctl + IRQ_STATUS);
	status_hi = FUNC2(chip, chip->ctl + IRQ_CTL_HI + IRQ_STATUS);

	FUNC5(dom, status_lo, 0);
	FUNC5(dom, status_hi, 32);

	FUNC1(host_chip, desc);
}