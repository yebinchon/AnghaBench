
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_10__ {struct drm_device* dev; } ;
struct exynos_dsi {TYPE_4__* out_bridge; TYPE_1__ connector; int * panel; TYPE_5__ encoder; } ;
struct TYPE_8__ {scalar_t__ poll_enabled; int mutex; } ;
struct drm_device {TYPE_3__ mode_config; } ;
struct TYPE_9__ {TYPE_2__* funcs; } ;
struct TYPE_7__ {int (* detach ) (TYPE_4__*) ;} ;


 int connector_status_disconnected ;
 int drm_kms_helper_hotplug_event (struct drm_device*) ;
 int drm_panel_detach (int *) ;
 int exynos_dsi_disable (TYPE_5__*) ;
 int exynos_dsi_unregister_te_irq (struct exynos_dsi*) ;
 struct exynos_dsi* host_to_dsi (struct mipi_dsi_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static int exynos_dsi_host_detach(struct mipi_dsi_host *host,
      struct mipi_dsi_device *device)
{
 struct exynos_dsi *dsi = host_to_dsi(host);
 struct drm_device *drm = dsi->encoder.dev;

 if (dsi->panel) {
  mutex_lock(&drm->mode_config.mutex);
  exynos_dsi_disable(&dsi->encoder);
  drm_panel_detach(dsi->panel);
  dsi->panel = ((void*)0);
  dsi->connector.status = connector_status_disconnected;
  mutex_unlock(&drm->mode_config.mutex);
 } else {
  if (dsi->out_bridge->funcs->detach)
   dsi->out_bridge->funcs->detach(dsi->out_bridge);
  dsi->out_bridge = ((void*)0);
 }

 if (drm->mode_config.poll_enabled)
  drm_kms_helper_hotplug_event(drm);

 exynos_dsi_unregister_te_irq(dsi);

 return 0;
}
