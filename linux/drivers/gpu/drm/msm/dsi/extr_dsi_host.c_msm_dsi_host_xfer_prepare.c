
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_dsi_host {int dma_cmd_ctrl_restore; TYPE_1__* pdev; struct msm_dsi_cfg_handler* cfg_hnd; } ;
struct msm_dsi_cfg_handler {TYPE_2__* ops; } ;
struct mipi_dsi_msg {int flags; } ;
struct mipi_dsi_host {int dummy; } ;
struct TYPE_4__ {int (* link_clk_enable ) (struct msm_dsi_host*) ;} ;
struct TYPE_3__ {int dev; } ;


 int DSI_CTRL_CMD_MODE_EN ;
 int DSI_CTRL_ENABLE ;
 int DSI_IRQ_MASK_CMD_DMA_DONE ;
 int MIPI_DSI_MSG_USE_LPM ;
 int REG_DSI_CTRL ;
 int dsi_intr_ctrl (struct msm_dsi_host*,int ,int) ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_set_tx_power_mode (int ,struct msm_dsi_host*) ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;
 int pm_runtime_get_sync (int *) ;
 int stub1 (struct msm_dsi_host*) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

int msm_dsi_host_xfer_prepare(struct mipi_dsi_host *host,
    const struct mipi_dsi_msg *msg)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);
 const struct msm_dsi_cfg_handler *cfg_hnd = msm_host->cfg_hnd;
 pm_runtime_get_sync(&msm_host->pdev->dev);
 cfg_hnd->ops->link_clk_enable(msm_host);



 if (!(msg->flags & MIPI_DSI_MSG_USE_LPM))
  dsi_set_tx_power_mode(0, msm_host);

 msm_host->dma_cmd_ctrl_restore = dsi_read(msm_host, REG_DSI_CTRL);
 dsi_write(msm_host, REG_DSI_CTRL,
  msm_host->dma_cmd_ctrl_restore |
  DSI_CTRL_CMD_MODE_EN |
  DSI_CTRL_ENABLE);
 dsi_intr_ctrl(msm_host, DSI_IRQ_MASK_CMD_DMA_DONE, 1);

 return 0;
}
