
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int err_work_state; } ;


 int DSI_ERR_STATE_FIFO ;
 int DSI_ERR_STATE_MDP_FIFO_UNDERFLOW ;
 int DSI_FIFO_STATUS_CMD_MDP_FIFO_UNDERFLOW ;
 int REG_DSI_FIFO_STATUS ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;

__attribute__((used)) static void dsi_fifo_status(struct msm_dsi_host *msm_host)
{
 u32 status;

 status = dsi_read(msm_host, REG_DSI_FIFO_STATUS);


 if (status) {
  dsi_write(msm_host, REG_DSI_FIFO_STATUS, status);
  msm_host->err_work_state |= DSI_ERR_STATE_FIFO;
  if (status & DSI_FIFO_STATUS_CMD_MDP_FIFO_UNDERFLOW)
   msm_host->err_work_state |=
     DSI_ERR_STATE_MDP_FIFO_UNDERFLOW;
 }
}
