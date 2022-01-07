
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int err_work; int workqueue; } ;


 int DSI_IRQ_MASK_ERROR ;
 int dsi_ack_err_status (struct msm_dsi_host*) ;
 int dsi_clk_status (struct msm_dsi_host*) ;
 int dsi_dln0_phy_err (struct msm_dsi_host*) ;
 int dsi_fifo_status (struct msm_dsi_host*) ;
 int dsi_intr_ctrl (struct msm_dsi_host*,int ,int ) ;
 int dsi_status (struct msm_dsi_host*) ;
 int dsi_timeout_status (struct msm_dsi_host*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void dsi_error(struct msm_dsi_host *msm_host)
{

 dsi_intr_ctrl(msm_host, DSI_IRQ_MASK_ERROR, 0);

 dsi_clk_status(msm_host);
 dsi_fifo_status(msm_host);
 dsi_ack_err_status(msm_host);
 dsi_timeout_status(msm_host);
 dsi_status(msm_host);
 dsi_dln0_phy_err(msm_host);

 queue_work(msm_host->workqueue, &msm_host->err_work);
}
