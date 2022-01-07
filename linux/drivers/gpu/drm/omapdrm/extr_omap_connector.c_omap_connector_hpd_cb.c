
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int status; struct drm_device* dev; } ;
struct omap_connector {struct drm_connector base; } ;
struct TYPE_2__ {int mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int drm_kms_helper_hotplug_event (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_connector_hpd_notify (struct drm_connector*,int) ;

__attribute__((used)) static void omap_connector_hpd_cb(void *cb_data,
      enum drm_connector_status status)
{
 struct omap_connector *omap_connector = cb_data;
 struct drm_connector *connector = &omap_connector->base;
 struct drm_device *dev = connector->dev;
 enum drm_connector_status old_status;

 mutex_lock(&dev->mode_config.mutex);
 old_status = connector->status;
 connector->status = status;
 mutex_unlock(&dev->mode_config.mutex);

 if (old_status == status)
  return;

 omap_connector_hpd_notify(connector, status);

 drm_kms_helper_hotplug_event(dev);
}
