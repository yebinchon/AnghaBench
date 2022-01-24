#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  polled; } ;
struct tegra_output {int hpd_irq; int /*<<< orphan*/  cec; TYPE_2__* dev; TYPE_1__ connector; int /*<<< orphan*/ * hpd_gpio; scalar_t__ of_node; int /*<<< orphan*/  ddc; int /*<<< orphan*/  edid; int /*<<< orphan*/ * panel; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hpd_irq ; 
 int /*<<< orphan*/ * FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct device_node* FUNC11 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,char*,struct tegra_output*) ; 

int FUNC13(struct tegra_output *output)
{
	struct device_node *ddc, *panel;
	unsigned long flags;
	int err, size;

	if (!output->of_node)
		output->of_node = output->dev->of_node;

	panel = FUNC11(output->of_node, "nvidia,panel", 0);
	if (panel) {
		output->panel = FUNC7(panel);
		if (FUNC0(output->panel))
			return FUNC1(output->panel);

		FUNC10(panel);
	}

	output->edid = FUNC9(output->of_node, "nvidia,edid", &size);

	ddc = FUNC11(output->of_node, "nvidia,ddc-i2c-bus", 0);
	if (ddc) {
		output->ddc = FUNC8(ddc);
		if (!output->ddc) {
			err = -EPROBE_DEFER;
			FUNC10(ddc);
			return err;
		}

		FUNC10(ddc);
	}

	output->hpd_gpio = FUNC4(output->dev,
						       output->of_node,
						       "nvidia,hpd-gpio", 0,
						       GPIOD_IN,
						       "HDMI hotplug detect");
	if (FUNC0(output->hpd_gpio)) {
		if (FUNC1(output->hpd_gpio) != -ENOENT)
			return FUNC1(output->hpd_gpio);

		output->hpd_gpio = NULL;
	}

	if (output->hpd_gpio) {
		err = FUNC6(output->hpd_gpio);
		if (err < 0) {
			FUNC3(output->dev, "gpiod_to_irq(): %d\n", err);
			return err;
		}

		output->hpd_irq = err;

		flags = IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING |
			IRQF_ONESHOT;

		err = FUNC12(output->hpd_irq, NULL, hpd_irq,
					   flags, "hpd", output);
		if (err < 0) {
			FUNC3(output->dev, "failed to request IRQ#%u: %d\n",
				output->hpd_irq, err);
			return err;
		}

		output->connector.polled = DRM_CONNECTOR_POLL_HPD;

		/*
		 * Disable the interrupt until the connector has been
		 * initialized to avoid a race in the hotplug interrupt
		 * handler.
		 */
		FUNC5(output->hpd_irq);
	}

	output->cec = FUNC2(output->dev);
	if (!output->cec)
		return -ENOMEM;

	return 0;
}