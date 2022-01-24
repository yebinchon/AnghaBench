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
struct msm_dsi_host {int power_on; int /*<<< orphan*/  dev_mutex; TYPE_2__* pdev; scalar_t__ disp_en_gpio; struct msm_dsi_cfg_handler* cfg_hnd; } ;
struct msm_dsi_cfg_handler {TYPE_1__* ops; } ;
struct mipi_dsi_host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* link_clk_disable ) (struct msm_dsi_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_dsi_host*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_dsi_host*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_dsi_host*) ; 
 struct msm_dsi_host* FUNC10 (struct mipi_dsi_host*) ; 

int FUNC11(struct mipi_dsi_host *host)
{
	struct msm_dsi_host *msm_host = FUNC10(host);
	const struct msm_dsi_cfg_handler *cfg_hnd = msm_host->cfg_hnd;

	FUNC5(&msm_host->dev_mutex);
	if (!msm_host->power_on) {
		FUNC0("dsi host already off");
		goto unlock_ret;
	}

	FUNC1(msm_host, false, NULL);

	if (msm_host->disp_en_gpio)
		FUNC3(msm_host->disp_en_gpio, 0);

	FUNC7(&msm_host->pdev->dev);

	cfg_hnd->ops->link_clk_disable(msm_host);
	FUNC8(&msm_host->pdev->dev);

	FUNC2(msm_host);

	FUNC4(msm_host, false);

	FUNC0("-");

	msm_host->power_on = false;

unlock_ret:
	FUNC6(&msm_host->dev_mutex);
	return 0;
}