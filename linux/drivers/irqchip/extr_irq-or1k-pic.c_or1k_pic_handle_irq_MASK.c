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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct pt_regs*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  root_domain ; 

__attribute__((used)) static void FUNC2(struct pt_regs *regs)
{
	int irq = -1;

	while ((irq = FUNC1(irq + 1)) != NO_IRQ)
		FUNC0(root_domain, irq, regs);
}