
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct qxl_device {struct drm_device ddev; } ;


 int DRM_DEBUG_KMS (char*) ;
 int MONITORS_CONFIG_BAD_CRC ;
 int MONITORS_CONFIG_ERROR ;
 int MONITORS_CONFIG_UNCHANGED ;
 int drm_helper_hpd_irq_event (struct drm_device*) ;
 int drm_kms_helper_hotplug_event (struct drm_device*) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 int qxl_display_copy_rom_client_monitors_config (struct qxl_device*) ;
 int qxl_update_offset_props (struct qxl_device*) ;
 int udelay (int) ;

void qxl_display_read_client_monitors_config(struct qxl_device *qdev)
{
 struct drm_device *dev = &qdev->ddev;
 int status, retries;

 for (retries = 0; retries < 10; retries++) {
  status = qxl_display_copy_rom_client_monitors_config(qdev);
  if (status != MONITORS_CONFIG_BAD_CRC)
   break;
  udelay(5);
 }
 if (status == MONITORS_CONFIG_ERROR) {
  DRM_DEBUG_KMS("ignoring client monitors config: error");
  return;
 }
 if (status == MONITORS_CONFIG_BAD_CRC) {
  DRM_DEBUG_KMS("ignoring client monitors config: bad crc");
  return;
 }
 if (status == MONITORS_CONFIG_UNCHANGED) {
  DRM_DEBUG_KMS("ignoring client monitors config: unchanged");
  return;
 }

 drm_modeset_lock_all(dev);
 qxl_update_offset_props(qdev);
 drm_modeset_unlock_all(dev);
 if (!drm_helper_hpd_irq_event(dev)) {


  drm_kms_helper_hotplug_event(dev);
 }
}
