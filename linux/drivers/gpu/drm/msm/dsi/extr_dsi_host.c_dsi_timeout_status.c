
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct msm_dsi_host {int err_work_state; } ;


 int DSI_ERR_STATE_TIMEOUT ;
 int REG_DSI_TIMEOUT_STATUS ;
 scalar_t__ dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_write (struct msm_dsi_host*,int ,scalar_t__) ;

__attribute__((used)) static void dsi_timeout_status(struct msm_dsi_host *msm_host)
{
 u32 status;

 status = dsi_read(msm_host, REG_DSI_TIMEOUT_STATUS);

 if (status) {
  dsi_write(msm_host, REG_DSI_TIMEOUT_STATUS, status);
  msm_host->err_work_state |= DSI_ERR_STATE_TIMEOUT;
 }
}
