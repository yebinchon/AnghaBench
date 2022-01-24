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
struct tegra_output {int /*<<< orphan*/  hpd_irq; scalar_t__ hpd_gpio; int /*<<< orphan*/  connector; scalar_t__ panel; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_device *drm, struct tegra_output *output)
{
	int err;

	if (output->panel) {
		err = FUNC0(output->panel, &output->connector);
		if (err < 0)
			return err;
	}

	/*
	 * The connector is now registered and ready to receive hotplug events
	 * so the hotplug interrupt can be enabled.
	 */
	if (output->hpd_gpio)
		FUNC1(output->hpd_irq);

	return 0;
}