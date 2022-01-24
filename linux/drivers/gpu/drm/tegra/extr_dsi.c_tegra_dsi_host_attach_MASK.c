#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ dev; } ;
struct tegra_output {TYPE_1__ connector; int /*<<< orphan*/ * panel; } ;
struct tegra_dsi {struct tegra_output output; int /*<<< orphan*/  master; int /*<<< orphan*/  dev; scalar_t__ slave; int /*<<< orphan*/  lanes; int /*<<< orphan*/  format; int /*<<< orphan*/  flags; } ;
struct mipi_dsi_host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {TYPE_2__ dev; int /*<<< orphan*/  lanes; int /*<<< orphan*/  format; int /*<<< orphan*/  mode_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct tegra_dsi* FUNC6 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tegra_dsi*) ; 

__attribute__((used)) static int FUNC9(struct mipi_dsi_host *host,
				 struct mipi_dsi_device *device)
{
	struct tegra_dsi *dsi = FUNC6(host);

	dsi->flags = device->mode_flags;
	dsi->format = device->format;
	dsi->lanes = device->lanes;

	if (dsi->slave) {
		int err;

		FUNC1(dsi->dev, "attaching dual-channel device %s\n",
			FUNC3(&device->dev));

		err = FUNC8(dsi);
		if (err < 0) {
			FUNC2(dsi->dev, "failed to set up ganged mode: %d\n",
				err);
			return err;
		}
	}

	/*
	 * Slaves don't have a panel associated with them, so they provide
	 * merely the second channel.
	 */
	if (!dsi->master) {
		struct tegra_output *output = &dsi->output;

		output->panel = FUNC7(device->dev.of_node);
		if (FUNC0(output->panel))
			output->panel = NULL;

		if (output->panel && output->connector.dev) {
			FUNC5(output->panel, &output->connector);
			FUNC4(output->connector.dev);
		}
	}

	return 0;
}