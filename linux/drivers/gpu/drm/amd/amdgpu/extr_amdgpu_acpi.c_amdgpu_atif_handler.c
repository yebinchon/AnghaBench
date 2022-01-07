
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct atif_sbios_requests {int pending; int backlight_level; } ;
struct amdgpu_encoder_atom_dig {int bl_dev; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int flags; TYPE_3__* ddev; struct amdgpu_atif* atif; } ;
struct TYPE_5__ {scalar_t__ sbios_requests; } ;
struct TYPE_4__ {scalar_t__ command_code; int enabled; } ;
struct amdgpu_atif {struct amdgpu_encoder* encoder_for_bl; TYPE_2__ functions; TYPE_1__ notification_cfg; } ;
struct acpi_bus_event {scalar_t__ type; int device_class; } ;
struct TYPE_6__ {int dev; } ;


 int ACPI_VIDEO_CLASS ;
 scalar_t__ ACPI_VIDEO_NOTIFY_PROBE ;
 int AMD_IS_PX ;
 int ATIF_DGPU_DISPLAY_EVENT ;
 int ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST ;
 int BACKLIGHT_UPDATE_HOTKEY ;
 int DRM_DEBUG_DRIVER (char*,int,...) ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int amdgpu_atif_get_sbios_requests (struct amdgpu_atif*,struct atif_sbios_requests*) ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_display_backlight_set_level (struct amdgpu_device*,struct amdgpu_encoder*,int) ;
 int backlight_force_update (int ,int ) ;
 int drm_helper_hpd_irq_event (TYPE_3__*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int amdgpu_atif_handler(struct amdgpu_device *adev,
          struct acpi_bus_event *event)
{
 struct amdgpu_atif *atif = adev->atif;
 int count;

 DRM_DEBUG_DRIVER("event, device_class = %s, type = %#x\n",
   event->device_class, event->type);

 if (strcmp(event->device_class, ACPI_VIDEO_CLASS) != 0)
  return NOTIFY_DONE;


 if (!atif ||
     !atif->notification_cfg.enabled ||
     event->type != atif->notification_cfg.command_code) {

  if (event->type == ACPI_VIDEO_NOTIFY_PROBE)
   return NOTIFY_BAD;
  else
   return NOTIFY_DONE;
 }

 if (atif->functions.sbios_requests) {
  struct atif_sbios_requests req;


  count = amdgpu_atif_get_sbios_requests(atif, &req);

  if (count <= 0)
   return NOTIFY_BAD;

  DRM_DEBUG_DRIVER("ATIF: %d pending SBIOS requests\n", count);


  if ((req.pending & ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST) &&
      !amdgpu_device_has_dc_support(adev)) {
   struct amdgpu_encoder *enc = atif->encoder_for_bl;

   if (enc) {
    struct amdgpu_encoder_atom_dig *dig = enc->enc_priv;

    DRM_DEBUG_DRIVER("Changing brightness to %d\n",
       req.backlight_level);

    amdgpu_display_backlight_set_level(adev, enc, req.backlight_level);





   }
  }
  if (req.pending & ATIF_DGPU_DISPLAY_EVENT) {
   if (adev->flags & AMD_IS_PX) {
    pm_runtime_get_sync(adev->ddev->dev);

    drm_helper_hpd_irq_event(adev->ddev);
    pm_runtime_mark_last_busy(adev->ddev->dev);
    pm_runtime_put_autosuspend(adev->ddev->dev);
   }
  }

 }






 return NOTIFY_BAD;
}
