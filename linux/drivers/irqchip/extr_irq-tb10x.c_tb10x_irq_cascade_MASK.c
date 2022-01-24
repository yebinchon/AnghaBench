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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC1 (struct irq_desc*) ; 
 unsigned int FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct irq_desc *desc)
{
	struct irq_domain *domain = FUNC1(desc);
	unsigned int irq = FUNC2(desc);

	FUNC0(FUNC3(domain, irq));
}