
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct shmob_drm_device {TYPE_4__* pdata; } ;
struct drm_display_mode {int type; int flags; int vtotal; int vsync_end; int vsync_start; int vdisplay; int htotal; int hsync_end; int hsync_start; int hdisplay; int clock; } ;
struct TYPE_7__ {int height_mm; int width_mm; } ;
struct drm_connector {TYPE_2__ display_info; TYPE_5__* dev; } ;
struct TYPE_10__ {struct shmob_drm_device* dev_private; } ;
struct TYPE_6__ {int flags; int vtotal; int vsync_end; int vsync_start; int vdisplay; int htotal; int hsync_end; int hsync_start; int hdisplay; int clock; } ;
struct TYPE_8__ {int height_mm; int width_mm; TYPE_1__ mode; } ;
struct TYPE_9__ {TYPE_3__ panel; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 struct drm_display_mode* drm_mode_create (TYPE_5__*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

__attribute__((used)) static int shmob_drm_connector_get_modes(struct drm_connector *connector)
{
 struct shmob_drm_device *sdev = connector->dev->dev_private;
 struct drm_display_mode *mode;

 mode = drm_mode_create(connector->dev);
 if (mode == ((void*)0))
  return 0;

 mode->type = DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
 mode->clock = sdev->pdata->panel.mode.clock;
 mode->hdisplay = sdev->pdata->panel.mode.hdisplay;
 mode->hsync_start = sdev->pdata->panel.mode.hsync_start;
 mode->hsync_end = sdev->pdata->panel.mode.hsync_end;
 mode->htotal = sdev->pdata->panel.mode.htotal;
 mode->vdisplay = sdev->pdata->panel.mode.vdisplay;
 mode->vsync_start = sdev->pdata->panel.mode.vsync_start;
 mode->vsync_end = sdev->pdata->panel.mode.vsync_end;
 mode->vtotal = sdev->pdata->panel.mode.vtotal;
 mode->flags = sdev->pdata->panel.mode.flags;

 drm_mode_set_name(mode);
 drm_mode_probed_add(connector, mode);

 connector->display_info.width_mm = sdev->pdata->panel.width_mm;
 connector->display_info.height_mm = sdev->pdata->panel.height_mm;

 return 1;
}
