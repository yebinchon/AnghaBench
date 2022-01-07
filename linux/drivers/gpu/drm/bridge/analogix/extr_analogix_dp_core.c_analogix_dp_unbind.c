
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* funcs; } ;
struct analogix_dp_device {int clock; int dev; int aux; TYPE_2__* plat_data; TYPE_3__ connector; int bridge; } ;
struct TYPE_5__ {scalar_t__ panel; } ;
struct TYPE_4__ {int (* destroy ) (TYPE_3__*) ;} ;


 int DRM_ERROR (char*) ;
 int analogix_dp_bridge_disable (int ) ;
 int clk_disable_unprepare (int ) ;
 int drm_dp_aux_unregister (int *) ;
 int drm_panel_detach (scalar_t__) ;
 scalar_t__ drm_panel_unprepare (scalar_t__) ;
 int pm_runtime_disable (int ) ;
 int stub1 (TYPE_3__*) ;

void analogix_dp_unbind(struct analogix_dp_device *dp)
{
 analogix_dp_bridge_disable(dp->bridge);
 dp->connector.funcs->destroy(&dp->connector);

 if (dp->plat_data->panel) {
  if (drm_panel_unprepare(dp->plat_data->panel))
   DRM_ERROR("failed to turnoff the panel\n");
  drm_panel_detach(dp->plat_data->panel);
 }

 drm_dp_aux_unregister(&dp->aux);
 pm_runtime_disable(dp->dev);
 clk_disable_unprepare(dp->clock);
}
