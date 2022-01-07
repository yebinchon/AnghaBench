
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_encoder_lvds {int bl_dev; } ;
struct radeon_encoder_atom_dig {int bl_dev; } ;
struct radeon_encoder {struct radeon_encoder_lvds* enc_priv; } ;
struct TYPE_4__ {scalar_t__ command_code; int enabled; } ;
struct radeon_atif {struct radeon_encoder* encoder_for_bl; TYPE_1__ notification_cfg; } ;
struct radeon_device {int flags; TYPE_3__* ddev; scalar_t__ is_atom_bios; TYPE_2__* pdev; struct radeon_atif atif; } ;
struct atif_sbios_requests {int pending; int backlight_level; } ;
struct acpi_bus_event {scalar_t__ type; int device_class; } ;
typedef int acpi_handle ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int dev; } ;


 int ACPI_HANDLE (int *) ;
 int ACPI_VIDEO_CLASS ;
 int ATIF_DGPU_DISPLAY_EVENT ;
 int ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST ;
 int BACKLIGHT_UPDATE_HOTKEY ;
 int DRM_DEBUG_DRIVER (char*,int,...) ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int RADEON_IS_PX ;
 int backlight_force_update (int ,int ) ;
 int drm_helper_hpd_irq_event (TYPE_3__*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int radeon_atif_get_sbios_requests (int ,struct atif_sbios_requests*) ;
 scalar_t__ radeon_atpx_dgpu_req_power_for_displays () ;
 int radeon_set_backlight_level (struct radeon_device*,struct radeon_encoder*,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int radeon_atif_handler(struct radeon_device *rdev,
  struct acpi_bus_event *event)
{
 struct radeon_atif *atif = &rdev->atif;
 struct atif_sbios_requests req;
 acpi_handle handle;
 int count;

 DRM_DEBUG_DRIVER("event, device_class = %s, type = %#x\n",
   event->device_class, event->type);

 if (strcmp(event->device_class, ACPI_VIDEO_CLASS) != 0)
  return NOTIFY_DONE;

 if (!atif->notification_cfg.enabled ||
   event->type != atif->notification_cfg.command_code)

  return NOTIFY_DONE;


 handle = ACPI_HANDLE(&rdev->pdev->dev);
 count = radeon_atif_get_sbios_requests(handle, &req);

 if (count <= 0)
  return NOTIFY_DONE;

 DRM_DEBUG_DRIVER("ATIF: %d pending SBIOS requests\n", count);

 if (req.pending & ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST) {
  struct radeon_encoder *enc = atif->encoder_for_bl;

  if (enc) {
   DRM_DEBUG_DRIVER("Changing brightness to %d\n",
     req.backlight_level);

   radeon_set_backlight_level(rdev, enc, req.backlight_level);
  }
 }
 if (req.pending & ATIF_DGPU_DISPLAY_EVENT) {
  if ((rdev->flags & RADEON_IS_PX) &&
      radeon_atpx_dgpu_req_power_for_displays()) {
   pm_runtime_get_sync(rdev->ddev->dev);

   drm_helper_hpd_irq_event(rdev->ddev);
   pm_runtime_mark_last_busy(rdev->ddev->dev);
   pm_runtime_put_autosuspend(rdev->ddev->dev);
  }
 }







 return NOTIFY_BAD;
}
