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
struct msm_dsi_host {int dma_cmd_ctrl_restore; TYPE_1__* pdev; struct msm_dsi_cfg_handler* cfg_hnd; } ;
struct msm_dsi_cfg_handler {TYPE_2__* ops; } ;
struct mipi_dsi_msg {int flags; } ;
struct mipi_dsi_host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* link_clk_enable ) (struct msm_dsi_host*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DSI_CTRL_CMD_MODE_EN ; 
 int DSI_CTRL_ENABLE ; 
 int /*<<< orphan*/  DSI_IRQ_MASK_CMD_DMA_DONE ; 
 int MIPI_DSI_MSG_USE_LPM ; 
 int /*<<< orphan*/  REG_DSI_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct msm_dsi_host*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct msm_dsi_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_dsi_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_dsi_host*) ; 
 struct msm_dsi_host* FUNC6 (struct mipi_dsi_host*) ; 

int FUNC7(struct mipi_dsi_host *host,
				const struct mipi_dsi_msg *msg)
{
	struct msm_dsi_host *msm_host = FUNC6(host);
	const struct msm_dsi_cfg_handler *cfg_hnd = msm_host->cfg_hnd;

	/* TODO: make sure dsi_cmd_mdp is idle.
	 * Since DSI6G v1.2.0, we can set DSI_TRIG_CTRL.BLOCK_DMA_WITHIN_FRAME
	 * to ask H/W to wait until cmd mdp is idle. S/W wait is not needed.
	 * How to handle the old versions? Wait for mdp cmd done?
	 */

	/*
	 * mdss interrupt is generated in mdp core clock domain
	 * mdp clock need to be enabled to receive dsi interrupt
	 */
	FUNC4(&msm_host->pdev->dev);
	cfg_hnd->ops->link_clk_enable(msm_host);

	/* TODO: vote for bus bandwidth */

	if (!(msg->flags & MIPI_DSI_MSG_USE_LPM))
		FUNC2(0, msm_host);

	msm_host->dma_cmd_ctrl_restore = FUNC1(msm_host, REG_DSI_CTRL);
	FUNC3(msm_host, REG_DSI_CTRL,
		msm_host->dma_cmd_ctrl_restore |
		DSI_CTRL_CMD_MODE_EN |
		DSI_CTRL_ENABLE);
	FUNC0(msm_host, DSI_IRQ_MASK_CMD_DMA_DONE, 1);

	return 0;
}