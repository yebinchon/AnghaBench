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
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ AMDGPU_MAX_IRQ_SRC_ID ; 
 int EPERM ; 
 int /*<<< orphan*/  amdgpu_irq_chip ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct irq_domain *d,
				unsigned int irq, irq_hw_number_t hwirq)
{
	if (hwirq >= AMDGPU_MAX_IRQ_SRC_ID)
		return -EPERM;

	FUNC0(irq,
				 &amdgpu_irq_chip, handle_simple_irq);
	return 0;
}