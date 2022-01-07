
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 scalar_t__ cdv_intel_crt_detect_hotplug (struct drm_connector*,int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;

__attribute__((used)) static enum drm_connector_status cdv_intel_crt_detect(
    struct drm_connector *connector, bool force)
{
 if (cdv_intel_crt_detect_hotplug(connector, force))
  return connector_status_connected;
 else
  return connector_status_disconnected;
}
