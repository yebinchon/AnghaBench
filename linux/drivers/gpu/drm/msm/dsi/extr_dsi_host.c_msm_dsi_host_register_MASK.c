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
struct msm_dsi_host {int registered; scalar_t__ device_node; TYPE_1__* pdev; } ;
struct mipi_dsi_host {int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsi_host_ops ; 
 int FUNC1 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct msm_dsi_host* FUNC4 (struct mipi_dsi_host*) ; 

int FUNC5(struct mipi_dsi_host *host, bool check_defer)
{
	struct msm_dsi_host *msm_host = FUNC4(host);
	int ret;

	/* Register mipi dsi host */
	if (!msm_host->registered) {
		host->dev = &msm_host->pdev->dev;
		host->ops = &dsi_host_ops;
		ret = FUNC1(host);
		if (ret)
			return ret;

		msm_host->registered = true;

		/* If the panel driver has not been probed after host register,
		 * we should defer the host's probe.
		 * It makes sure panel is connected when fbcon detects
		 * connector status and gets the proper display mode to
		 * create framebuffer.
		 * Don't try to defer if there is nothing connected to the dsi
		 * output
		 */
		if (check_defer && msm_host->device_node) {
			if (FUNC0(FUNC3(msm_host->device_node)))
				if (!FUNC2(msm_host->device_node))
					return -EPROBE_DEFER;
		}
	}

	return 0;
}