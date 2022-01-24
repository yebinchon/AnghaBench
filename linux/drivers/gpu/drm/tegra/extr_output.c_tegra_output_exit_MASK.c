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
struct tegra_output {scalar_t__ panel; int /*<<< orphan*/  hpd_irq; scalar_t__ hpd_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct tegra_output *output)
{
	/*
	 * The connector is going away, so the interrupt must be disabled to
	 * prevent the hotplug interrupt handler from potentially crashing.
	 */
	if (output->hpd_gpio)
		FUNC0(output->hpd_irq);

	if (output->panel)
		FUNC1(output->panel);
}