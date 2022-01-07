
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int dummy; } ;


 int DSI_CLK_CTRL_ENABLE_CLKS ;
 int DSI_RESET_TOGGLE_DELAY_MS ;
 int REG_DSI_CLK_CTRL ;
 int REG_DSI_RESET ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;
 int msleep (int ) ;
 int wmb () ;

__attribute__((used)) static void dsi_sw_reset(struct msm_dsi_host *msm_host)
{
 dsi_write(msm_host, REG_DSI_CLK_CTRL, DSI_CLK_CTRL_ENABLE_CLKS);
 wmb();

 dsi_write(msm_host, REG_DSI_RESET, 1);
 msleep(DSI_RESET_TOGGLE_DELAY_MS);
 dsi_write(msm_host, REG_DSI_RESET, 0);
}
