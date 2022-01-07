
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_info {int* bus_formats; int bus_flags; int num_bus_formats; } ;
struct TYPE_2__ {struct drm_display_info display_info; } ;
struct rcar_lvds {int mode; int dev; int panel; TYPE_1__ connector; } ;
typedef enum rcar_lvds_mode { ____Placeholder_rcar_lvds_mode } rcar_lvds_mode ;


 int DRM_BUS_FLAG_DATA_LSB_TO_MSB ;



 int RCAR_LVDS_MODE_JEIDA ;
 int RCAR_LVDS_MODE_MIRROR ;
 int RCAR_LVDS_MODE_VESA ;
 int dev_err (int ,char*,...) ;

__attribute__((used)) static void rcar_lvds_get_lvds_mode(struct rcar_lvds *lvds)
{
 struct drm_display_info *info = &lvds->connector.display_info;
 enum rcar_lvds_mode mode;





 if (!lvds->panel)
  return;

 if (!info->num_bus_formats || !info->bus_formats) {
  dev_err(lvds->dev, "no LVDS bus format reported\n");
  return;
 }

 switch (info->bus_formats[0]) {
 case 130:
 case 129:
  mode = RCAR_LVDS_MODE_JEIDA;
  break;
 case 128:
  mode = RCAR_LVDS_MODE_VESA;
  break;
 default:
  dev_err(lvds->dev, "unsupported LVDS bus format 0x%04x\n",
   info->bus_formats[0]);
  return;
 }

 if (info->bus_flags & DRM_BUS_FLAG_DATA_LSB_TO_MSB)
  mode |= RCAR_LVDS_MODE_MIRROR;

 lvds->mode = mode;
}
