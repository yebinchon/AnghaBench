
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {scalar_t__ registration_state; int mutex; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* early_unregister ) (struct drm_connector*) ;} ;


 scalar_t__ DRM_CONNECTOR_REGISTERED ;
 scalar_t__ DRM_CONNECTOR_UNREGISTERED ;
 int drm_debugfs_connector_remove (struct drm_connector*) ;
 int drm_sysfs_connector_remove (struct drm_connector*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_connector*) ;

void drm_connector_unregister(struct drm_connector *connector)
{
 mutex_lock(&connector->mutex);
 if (connector->registration_state != DRM_CONNECTOR_REGISTERED) {
  mutex_unlock(&connector->mutex);
  return;
 }

 if (connector->funcs->early_unregister)
  connector->funcs->early_unregister(connector);

 drm_sysfs_connector_remove(connector);
 drm_debugfs_connector_remove(connector);

 connector->registration_state = DRM_CONNECTOR_UNREGISTERED;
 mutex_unlock(&connector->mutex);
}
