
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int enabled; int mode_flags; } ;
struct mipi_dsi_host {int dummy; } ;


 int MIPI_DSI_MODE_VIDEO ;
 int dsi_op_mode_config (struct msm_dsi_host*,int,int) ;
 int dsi_sw_reset (struct msm_dsi_host*) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

int msm_dsi_host_disable(struct mipi_dsi_host *host)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 msm_host->enabled = 0;
 dsi_op_mode_config(msm_host,
  !!(msm_host->mode_flags & MIPI_DSI_MODE_VIDEO), 0);





 dsi_sw_reset(msm_host);

 return 0;
}
