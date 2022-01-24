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
typedef  int u32 ;
struct spear_shirq {int mask; int offset; scalar_t__ virq_base; scalar_t__ status_reg; scalar_t__ base; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct spear_shirq* FUNC2 (struct irq_desc*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_desc *desc)
{
	struct spear_shirq *shirq = FUNC2(desc);
	u32 pend;

	pend = FUNC3(shirq->base + shirq->status_reg) & shirq->mask;
	pend >>= shirq->offset;

	while (pend) {
		int irq = FUNC0(pend);

		pend &= ~(0x1 << irq);
		FUNC1(shirq->virq_base + irq);
	}
}