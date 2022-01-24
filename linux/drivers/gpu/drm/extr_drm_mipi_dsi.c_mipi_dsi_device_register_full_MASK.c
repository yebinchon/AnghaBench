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
struct mipi_dsi_host {struct device* dev; } ;
struct mipi_dsi_device_info {int channel; int /*<<< orphan*/  type; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {int channel; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct mipi_dsi_device* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mipi_dsi_device*) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mipi_dsi_device*) ; 
 int FUNC5 (struct mipi_dsi_device*) ; 
 struct mipi_dsi_device* FUNC6 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct mipi_dsi_device *
FUNC8(struct mipi_dsi_host *host,
			      const struct mipi_dsi_device_info *info)
{
	struct mipi_dsi_device *dsi;
	struct device *dev = host->dev;
	int ret;

	if (!info) {
		FUNC3(dev, "invalid mipi_dsi_device_info pointer\n");
		return FUNC0(-EINVAL);
	}

	if (info->channel > 3) {
		FUNC3(dev, "invalid virtual channel: %u\n", info->channel);
		return FUNC0(-EINVAL);
	}

	dsi = FUNC6(host);
	if (FUNC1(dsi)) {
		FUNC3(dev, "failed to allocate DSI device %ld\n",
			FUNC2(dsi));
		return dsi;
	}

	dsi->dev.of_node = info->node;
	dsi->channel = info->channel;
	FUNC7(dsi->name, info->type, sizeof(dsi->name));

	ret = FUNC5(dsi);
	if (ret) {
		FUNC3(dev, "failed to add DSI device %d\n", ret);
		FUNC4(dsi);
		return FUNC0(ret);
	}

	return dsi;
}