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
struct msm_dsi_host {int /*<<< orphan*/  hpd_work; int /*<<< orphan*/  workqueue; scalar_t__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/ * device_node; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct msm_dsi_host* FUNC2 (struct mipi_dsi_host*) ; 

__attribute__((used)) static int FUNC3(struct mipi_dsi_host *host,
					struct mipi_dsi_device *dsi)
{
	struct msm_dsi_host *msm_host = FUNC2(host);

	msm_host->device_node = NULL;

	FUNC0("id=%d", msm_host->id);
	if (msm_host->dev)
		FUNC1(msm_host->workqueue, &msm_host->hpd_work);

	return 0;
}