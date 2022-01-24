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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int dummy; } ;
struct fpga_irq_data {int /*<<< orphan*/  domain; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ IRQ_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct fpga_irq_data *f, struct pt_regs *regs)
{
	int handled = 0;
	int irq;
	u32 status;

	while ((status  = FUNC2(f->base + IRQ_STATUS))) {
		irq = FUNC0(status) - 1;
		FUNC1(f->domain, irq, regs);
		handled = 1;
	}

	return handled;
}