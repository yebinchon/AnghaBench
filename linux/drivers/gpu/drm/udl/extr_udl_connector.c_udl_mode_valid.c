
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udl_device {int sku_pixel_limit; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_connector {TYPE_1__* dev; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {struct udl_device* dev_private; } ;


 int MODE_VIRTUAL_Y ;

__attribute__((used)) static enum drm_mode_status udl_mode_valid(struct drm_connector *connector,
     struct drm_display_mode *mode)
{
 struct udl_device *udl = connector->dev->dev_private;
 if (!udl->sku_pixel_limit)
  return 0;

 if (mode->vdisplay * mode->hdisplay > udl->sku_pixel_limit)
  return MODE_VIRTUAL_Y;

 return 0;
}
