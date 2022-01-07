
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_dsi_host {int registered; scalar_t__ device_node; TYPE_1__* pdev; } ;
struct mipi_dsi_host {int * ops; int * dev; } ;
struct TYPE_2__ {int dev; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int ) ;
 int dsi_host_ops ;
 int mipi_dsi_host_register (struct mipi_dsi_host*) ;
 int of_drm_find_bridge (scalar_t__) ;
 int of_drm_find_panel (scalar_t__) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

int msm_dsi_host_register(struct mipi_dsi_host *host, bool check_defer)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);
 int ret;


 if (!msm_host->registered) {
  host->dev = &msm_host->pdev->dev;
  host->ops = &dsi_host_ops;
  ret = mipi_dsi_host_register(host);
  if (ret)
   return ret;

  msm_host->registered = 1;
  if (check_defer && msm_host->device_node) {
   if (IS_ERR(of_drm_find_panel(msm_host->device_node)))
    if (!of_drm_find_bridge(msm_host->device_node))
     return -EPROBE_DEFER;
  }
 }

 return 0;
}
