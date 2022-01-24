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
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device_info {char* type; int /*<<< orphan*/ * node; int /*<<< orphan*/  channel; } ;
struct mipi_dsi_device {int mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  lanes; } ;
struct device {int dummy; } ;
struct adv7511 {int /*<<< orphan*/  num_dsi_lanes; struct mipi_dsi_device* dsi; int /*<<< orphan*/  host_node; TYPE_1__* i2c_main; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_EOT_PACKET ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_HSE ; 
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct mipi_dsi_device*) ; 
 struct mipi_dsi_device* FUNC4 (struct mipi_dsi_host*,struct mipi_dsi_device_info const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mipi_dsi_device*) ; 
 struct mipi_dsi_host* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct adv7511 *adv)
{
	struct device *dev = &adv->i2c_main->dev;
	struct mipi_dsi_host *host;
	struct mipi_dsi_device *dsi;
	int ret = 0;
	const struct mipi_dsi_device_info info = { .type = "adv7533",
						   .channel = 0,
						   .node = NULL,
						 };

	host = FUNC6(adv->host_node);
	if (!host) {
		FUNC2(dev, "failed to find dsi host\n");
		return -EPROBE_DEFER;
	}

	dsi = FUNC4(host, &info);
	if (FUNC0(dsi)) {
		FUNC2(dev, "failed to create dsi device\n");
		ret = FUNC1(dsi);
		goto err_dsi_device;
	}

	adv->dsi = dsi;

	dsi->lanes = adv->num_dsi_lanes;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
			  MIPI_DSI_MODE_EOT_PACKET | MIPI_DSI_MODE_VIDEO_HSE;

	ret = FUNC3(dsi);
	if (ret < 0) {
		FUNC2(dev, "failed to attach dsi to host\n");
		goto err_dsi_attach;
	}

	return 0;

err_dsi_attach:
	FUNC5(dsi);
err_dsi_device:
	return ret;
}