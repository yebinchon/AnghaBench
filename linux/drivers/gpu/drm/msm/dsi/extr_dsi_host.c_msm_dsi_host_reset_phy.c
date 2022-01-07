
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int dummy; } ;
struct mipi_dsi_host {int dummy; } ;


 int DBG (char*) ;
 int DSI_PHY_RESET_RESET ;
 int REG_DSI_PHY_RESET ;
 int dsi_write (struct msm_dsi_host*,int ,int ) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;
 int udelay (int) ;
 int wmb () ;

void msm_dsi_host_reset_phy(struct mipi_dsi_host *host)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 DBG("");
 dsi_write(msm_host, REG_DSI_PHY_RESET, DSI_PHY_RESET_RESET);

 wmb();
 udelay(1000);
 dsi_write(msm_host, REG_DSI_PHY_RESET, 0);
 udelay(100);
}
