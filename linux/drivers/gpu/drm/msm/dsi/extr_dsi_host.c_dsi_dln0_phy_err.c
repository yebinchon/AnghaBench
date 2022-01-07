
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int err_work_state; } ;


 int DSI_DLN0_PHY_ERR_DLN0_ERR_CONTENTION_LP0 ;
 int DSI_DLN0_PHY_ERR_DLN0_ERR_CONTENTION_LP1 ;
 int DSI_DLN0_PHY_ERR_DLN0_ERR_CONTROL ;
 int DSI_DLN0_PHY_ERR_DLN0_ERR_ESC ;
 int DSI_DLN0_PHY_ERR_DLN0_ERR_SYNC_ESC ;
 int DSI_ERR_STATE_DLN0_PHY ;
 int REG_DSI_DLN0_PHY_ERR ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;

__attribute__((used)) static void dsi_dln0_phy_err(struct msm_dsi_host *msm_host)
{
 u32 status;

 status = dsi_read(msm_host, REG_DSI_DLN0_PHY_ERR);

 if (status & (DSI_DLN0_PHY_ERR_DLN0_ERR_ESC |
   DSI_DLN0_PHY_ERR_DLN0_ERR_SYNC_ESC |
   DSI_DLN0_PHY_ERR_DLN0_ERR_CONTROL |
   DSI_DLN0_PHY_ERR_DLN0_ERR_CONTENTION_LP0 |
   DSI_DLN0_PHY_ERR_DLN0_ERR_CONTENTION_LP1)) {
  dsi_write(msm_host, REG_DSI_DLN0_PHY_ERR, status);
  msm_host->err_work_state |= DSI_ERR_STATE_DLN0_PHY;
 }
}
