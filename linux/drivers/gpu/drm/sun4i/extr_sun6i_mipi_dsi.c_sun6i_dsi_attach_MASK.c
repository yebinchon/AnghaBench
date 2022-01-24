#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sun6i_dsi {int /*<<< orphan*/  panel; struct mipi_dsi_device* device; } ;
struct mipi_dsi_host {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sun6i_dsi* FUNC3 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mipi_dsi_host *host,
			    struct mipi_dsi_device *device)
{
	struct sun6i_dsi *dsi = FUNC3(host);

	dsi->device = device;
	dsi->panel = FUNC4(device->dev.of_node);
	if (FUNC0(dsi->panel))
		return FUNC1(dsi->panel);

	FUNC2(host->dev, "Attached device %s\n", device->name);

	return 0;
}