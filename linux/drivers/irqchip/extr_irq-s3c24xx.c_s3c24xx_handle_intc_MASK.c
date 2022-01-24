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
struct s3c_irq_intc {int /*<<< orphan*/  domain; scalar_t__ reg_intpnd; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC4(struct s3c_irq_intc *intc,
				      struct pt_regs *regs, int intc_offset)
{
	int pnd;
	int offset;

	pnd = FUNC3(intc->reg_intpnd);
	if (!pnd)
		return false;

	/* non-dt machines use individual domains */
	if (!FUNC2(intc->domain))
		intc_offset = 0;

	/* We have a problem that the INTOFFSET register does not always
	 * show one interrupt. Occasionally we get two interrupts through
	 * the prioritiser, and this causes the INTOFFSET register to show
	 * what looks like the logical-or of the two interrupt numbers.
	 *
	 * Thanks to Klaus, Shannon, et al for helping to debug this problem
	 */
	offset = FUNC3(intc->reg_intpnd + 4);

	/* Find the bit manually, when the offset is wrong.
	 * The pending register only ever contains the one bit of the next
	 * interrupt to handle.
	 */
	if (!(pnd & (1 << offset)))
		offset =  FUNC0(pnd);

	FUNC1(intc->domain, intc_offset + offset, regs);
	return true;
}