
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int mode_flags; int enabled; } ;
struct mipi_dsi_host {int dummy; } ;


 int MIPI_DSI_MODE_VIDEO ;
 int dsi_op_mode_config (struct msm_dsi_host*,int,int) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

int msm_dsi_host_enable(struct mipi_dsi_host *host)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 dsi_op_mode_config(msm_host,
  !!(msm_host->mode_flags & MIPI_DSI_MODE_VIDEO), 1);
 msm_host->enabled = 1;
 return 0;
}
