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
struct sa1100_gpio_chip {int irqwake; int irqrising; int irqfalling; scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ R_GEDR ; 
 scalar_t__ R_GFER ; 
 scalar_t__ R_GRER ; 
 int FUNC0 (scalar_t__) ; 
 struct sa1100_gpio_chip sa1100_gpio_chip ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct sa1100_gpio_chip *sgc = &sa1100_gpio_chip;

	/*
	 * Set the appropriate edges for wakeup.
	 */
	FUNC1(sgc->irqwake & sgc->irqrising, sgc->membase + R_GRER);
	FUNC1(sgc->irqwake & sgc->irqfalling, sgc->membase + R_GFER);

	/*
	 * Clear any pending GPIO interrupts.
	 */
	FUNC1(FUNC0(sgc->membase + R_GEDR),
		       sgc->membase + R_GEDR);

	return 0;
}