
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int dummy; } ;


 int DSI_CLK_CTRL_ENABLE_CLKS ;
 int DSI_CTRL_ENABLE ;
 int DSI_RESET_TOGGLE_DELAY_MS ;
 int REG_DSI_CLK_CTRL ;
 int REG_DSI_CTRL ;
 int REG_DSI_RESET ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;
 int msleep (int ) ;
 int wmb () ;

__attribute__((used)) static void dsi_sw_reset_restore(struct msm_dsi_host *msm_host)
{
 u32 data0, data1;

 data0 = dsi_read(msm_host, REG_DSI_CTRL);
 data1 = data0;
 data1 &= ~DSI_CTRL_ENABLE;
 dsi_write(msm_host, REG_DSI_CTRL, data1);




 wmb();

 dsi_write(msm_host, REG_DSI_CLK_CTRL, DSI_CLK_CTRL_ENABLE_CLKS);
 wmb();


 dsi_write(msm_host, REG_DSI_RESET, 1);
 msleep(DSI_RESET_TOGGLE_DELAY_MS);
 dsi_write(msm_host, REG_DSI_RESET, 0);
 wmb();
 dsi_write(msm_host, REG_DSI_CTRL, data0);
 wmb();
}
