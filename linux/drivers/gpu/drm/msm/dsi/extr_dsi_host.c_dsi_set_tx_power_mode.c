
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int dummy; } ;


 int DSI_CMD_DMA_CTRL_LOW_POWER ;
 int REG_DSI_CMD_DMA_CTRL ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_write (struct msm_dsi_host*,int ,int ) ;

__attribute__((used)) static void dsi_set_tx_power_mode(int mode, struct msm_dsi_host *msm_host)
{
 u32 data;

 data = dsi_read(msm_host, REG_DSI_CMD_DMA_CTRL);

 if (mode == 0)
  data &= ~DSI_CMD_DMA_CTRL_LOW_POWER;
 else
  data |= DSI_CMD_DMA_CTRL_LOW_POWER;

 dsi_write(msm_host, REG_DSI_CMD_DMA_CTRL, data);
}
