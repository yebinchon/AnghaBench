
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {int status; int name; TYPE_2__ base; struct drm_device* dev; } ;
struct intel_connector {TYPE_3__ base; } ;
struct TYPE_4__ {int mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
typedef enum intel_hotplug_state { ____Placeholder_intel_hotplug_state } intel_hotplug_state ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ) ;
 int INTEL_HOTPLUG_CHANGED ;
 int INTEL_HOTPLUG_UNCHANGED ;
 int WARN_ON (int) ;
 int drm_get_connector_status_name (int) ;
 int drm_helper_probe_detect (TYPE_3__*,int *,int) ;
 int mutex_is_locked (int *) ;

enum intel_hotplug_state
intel_encoder_hotplug(struct intel_encoder *encoder,
        struct intel_connector *connector,
        bool irq_received)
{
 struct drm_device *dev = connector->base.dev;
 enum drm_connector_status old_status;

 WARN_ON(!mutex_is_locked(&dev->mode_config.mutex));
 old_status = connector->base.status;

 connector->base.status =
  drm_helper_probe_detect(&connector->base, ((void*)0), 0);

 if (old_status == connector->base.status)
  return INTEL_HOTPLUG_UNCHANGED;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s\n",
        connector->base.base.id,
        connector->base.name,
        drm_get_connector_status_name(old_status),
        drm_get_connector_status_name(connector->base.status));

 return INTEL_HOTPLUG_CHANGED;
}
