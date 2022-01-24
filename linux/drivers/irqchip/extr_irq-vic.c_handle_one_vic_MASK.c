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
typedef  scalar_t__ u32 ;
struct vic_device {int /*<<< orphan*/  domain; scalar_t__ base; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIC_IRQ_STATUS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,struct pt_regs*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct vic_device *vic, struct pt_regs *regs)
{
	u32 stat, irq;
	int handled = 0;

	while ((stat = FUNC2(vic->base + VIC_IRQ_STATUS))) {
		irq = FUNC0(stat) - 1;
		FUNC1(vic->domain, irq, regs);
		handled = 1;
	}

	return handled;
}