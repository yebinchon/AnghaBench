
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct lcd_olinuxino_mode {int refresh; scalar_t__ vbp; scalar_t__ vpw; scalar_t__ vfp; scalar_t__ vactive; scalar_t__ hbp; scalar_t__ hpw; scalar_t__ hfp; scalar_t__ hactive; int pixelclock; } ;
struct lcd_olinuxino_info {int bus_flag; scalar_t__ bus_format; int bpc; int height_mm; int width_mm; } ;
struct TYPE_5__ {int num_modes; int * reserved; struct lcd_olinuxino_info info; } ;
struct TYPE_4__ {struct drm_device* drm; struct drm_connector* connector; } ;
struct lcd_olinuxino {TYPE_2__ eeprom; TYPE_1__ panel; } ;
struct drm_panel {int dummy; } ;
struct drm_display_mode {int type; int vrefresh; scalar_t__ vtotal; scalar_t__ vsync_end; scalar_t__ vsync_start; scalar_t__ vdisplay; scalar_t__ htotal; scalar_t__ hsync_end; scalar_t__ hsync_start; scalar_t__ hdisplay; int clock; } ;
struct drm_device {int dev; } ;
struct TYPE_6__ {int bus_flags; int bpc; int height_mm; int width_mm; } ;
struct drm_connector {TYPE_3__ display_info; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int dev_err (int ,char*,scalar_t__,scalar_t__,int ) ;
 int drm_display_info_set_bus_formats (TYPE_3__*,scalar_t__*,int) ;
 struct drm_display_mode* drm_mode_create (struct drm_device*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct lcd_olinuxino* to_lcd_olinuxino (struct drm_panel*) ;

__attribute__((used)) static int lcd_olinuxino_get_modes(struct drm_panel *panel)
{
 struct lcd_olinuxino *lcd = to_lcd_olinuxino(panel);
 struct drm_connector *connector = lcd->panel.connector;
 struct lcd_olinuxino_info *lcd_info = &lcd->eeprom.info;
 struct drm_device *drm = lcd->panel.drm;
 struct lcd_olinuxino_mode *lcd_mode;
 struct drm_display_mode *mode;
 u32 i, num = 0;

 for (i = 0; i < lcd->eeprom.num_modes; i++) {
  lcd_mode = (struct lcd_olinuxino_mode *)
      &lcd->eeprom.reserved[i * sizeof(*lcd_mode)];

  mode = drm_mode_create(drm);
  if (!mode) {
   dev_err(drm->dev, "failed to add mode %ux%u@%u\n",
    lcd_mode->hactive,
    lcd_mode->vactive,
    lcd_mode->refresh);
    continue;
  }

  mode->clock = lcd_mode->pixelclock;
  mode->hdisplay = lcd_mode->hactive;
  mode->hsync_start = lcd_mode->hactive + lcd_mode->hfp;
  mode->hsync_end = lcd_mode->hactive + lcd_mode->hfp +
      lcd_mode->hpw;
  mode->htotal = lcd_mode->hactive + lcd_mode->hfp +
          lcd_mode->hpw + lcd_mode->hbp;
  mode->vdisplay = lcd_mode->vactive;
  mode->vsync_start = lcd_mode->vactive + lcd_mode->vfp;
  mode->vsync_end = lcd_mode->vactive + lcd_mode->vfp +
      lcd_mode->vpw;
  mode->vtotal = lcd_mode->vactive + lcd_mode->vfp +
          lcd_mode->vpw + lcd_mode->vbp;
  mode->vrefresh = lcd_mode->refresh;


  if (i == 0)
   mode->type |= DRM_MODE_TYPE_PREFERRED;
  mode->type |= DRM_MODE_TYPE_DRIVER;

  drm_mode_set_name(mode);
  drm_mode_probed_add(connector, mode);

  num++;
 }

 connector->display_info.width_mm = lcd_info->width_mm;
 connector->display_info.height_mm = lcd_info->height_mm;
 connector->display_info.bpc = lcd_info->bpc;

 if (lcd_info->bus_format)
  drm_display_info_set_bus_formats(&connector->display_info,
       &lcd_info->bus_format, 1);
 connector->display_info.bus_flags = lcd_info->bus_flag;

 return num;
}
