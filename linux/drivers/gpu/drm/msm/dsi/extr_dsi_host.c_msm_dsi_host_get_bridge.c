
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int device_node; } ;
struct mipi_dsi_host {int dummy; } ;
struct drm_bridge {int dummy; } ;


 struct drm_bridge* of_drm_find_bridge (int ) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

struct drm_bridge *msm_dsi_host_get_bridge(struct mipi_dsi_host *host)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 return of_drm_find_bridge(msm_host->device_node);
}
