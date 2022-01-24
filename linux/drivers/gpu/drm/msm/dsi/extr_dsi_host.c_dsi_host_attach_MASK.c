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
struct msm_dsi_host {scalar_t__ num_data_lanes; scalar_t__ lanes; int /*<<< orphan*/  hpd_work; int /*<<< orphan*/  workqueue; scalar_t__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  channel; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {scalar_t__ lanes; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (struct msm_dsi_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct msm_dsi_host* FUNC3 (struct mipi_dsi_host*) ; 

__attribute__((used)) static int FUNC4(struct mipi_dsi_host *host,
					struct mipi_dsi_device *dsi)
{
	struct msm_dsi_host *msm_host = FUNC3(host);
	int ret;

	if (dsi->lanes > msm_host->num_data_lanes)
		return -EINVAL;

	msm_host->channel = dsi->channel;
	msm_host->lanes = dsi->lanes;
	msm_host->format = dsi->format;
	msm_host->mode_flags = dsi->mode_flags;

	/* Some gpios defined in panel DT need to be controlled by host */
	ret = FUNC1(msm_host, &dsi->dev);
	if (ret)
		return ret;

	FUNC0("id=%d", msm_host->id);
	if (msm_host->dev)
		FUNC2(msm_host->workqueue, &msm_host->hpd_work);

	return 0;
}