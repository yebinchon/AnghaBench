
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int registered; } ;
struct mipi_dsi_host {int * ops; int * dev; } ;


 int mipi_dsi_host_unregister (struct mipi_dsi_host*) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

void msm_dsi_host_unregister(struct mipi_dsi_host *host)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 if (msm_host->registered) {
  mipi_dsi_host_unregister(host);
  host->dev = ((void*)0);
  host->ops = ((void*)0);
  msm_host->registered = 0;
 }
}
