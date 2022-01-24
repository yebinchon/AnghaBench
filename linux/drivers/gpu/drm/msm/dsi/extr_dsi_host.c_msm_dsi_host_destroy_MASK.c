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
struct msm_dsi_host {TYPE_1__* pdev; int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  cmd_mutex; int /*<<< orphan*/ * workqueue; } ;
struct mipi_dsi_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct msm_dsi_host* FUNC6 (struct mipi_dsi_host*) ; 

void FUNC7(struct mipi_dsi_host *host)
{
	struct msm_dsi_host *msm_host = FUNC6(host);

	FUNC0("");
	FUNC2(msm_host);
	if (msm_host->workqueue) {
		FUNC3(msm_host->workqueue);
		FUNC1(msm_host->workqueue);
		msm_host->workqueue = NULL;
	}

	FUNC4(&msm_host->cmd_mutex);
	FUNC4(&msm_host->dev_mutex);

	FUNC5(&msm_host->pdev->dev);
}