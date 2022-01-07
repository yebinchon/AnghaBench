
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_host {int dummy; } ;
struct drm_panel {int dummy; } ;
struct TYPE_2__ {int device_node; } ;


 struct drm_panel* of_drm_find_panel (int ) ;
 TYPE_1__* to_msm_dsi_host (struct mipi_dsi_host*) ;

struct drm_panel *msm_dsi_host_get_panel(struct mipi_dsi_host *host)
{
 return of_drm_find_panel(to_msm_dsi_host(host)->device_node);
}
