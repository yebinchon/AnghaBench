
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {TYPE_2__* ops; struct omap_dss_device* next; } ;
struct omap_connector {struct omap_dss_device* output; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_3__ {int (* lost_hotplug ) (struct omap_dss_device*) ;} ;
struct TYPE_4__ {TYPE_1__ hdmi; } ;


 int connector_status_disconnected ;
 int stub1 (struct omap_dss_device*) ;
 struct omap_connector* to_omap_connector (struct drm_connector*) ;

__attribute__((used)) static void omap_connector_hpd_notify(struct drm_connector *connector,
          enum drm_connector_status status)
{
 struct omap_connector *omap_connector = to_omap_connector(connector);
 struct omap_dss_device *dssdev;

 if (status != connector_status_disconnected)
  return;






 for (dssdev = omap_connector->output; dssdev; dssdev = dssdev->next) {
  if (dssdev->ops && dssdev->ops->hdmi.lost_hotplug)
   dssdev->ops->hdmi.lost_hotplug(dssdev);
 }
}
