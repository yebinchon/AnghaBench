
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct innolux_panel {TYPE_3__* desc; } ;
struct drm_panel {TYPE_4__* connector; TYPE_5__* drm; } ;
struct drm_display_mode {int vrefresh; int vdisplay; int hdisplay; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_7__ {int bpc; int height_mm; int width_mm; } ;
struct TYPE_9__ {TYPE_2__ display_info; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_8__ {int bpc; TYPE_1__ size; struct drm_display_mode* mode; } ;


 int DRM_DEV_ERROR (int ,char*,int ,int ,int ) ;
 int ENOMEM ;
 struct drm_display_mode* drm_mode_duplicate (TYPE_5__*,struct drm_display_mode const*) ;
 int drm_mode_probed_add (TYPE_4__*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct innolux_panel* to_innolux_panel (struct drm_panel*) ;

__attribute__((used)) static int innolux_panel_get_modes(struct drm_panel *panel)
{
 struct innolux_panel *innolux = to_innolux_panel(panel);
 const struct drm_display_mode *m = innolux->desc->mode;
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, m);
 if (!mode) {
  DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
         m->hdisplay, m->vdisplay, m->vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);

 drm_mode_probed_add(panel->connector, mode);

 panel->connector->display_info.width_mm =
   innolux->desc->size.width;
 panel->connector->display_info.height_mm =
   innolux->desc->size.height;
 panel->connector->display_info.bpc = innolux->desc->bpc;

 return 1;
}
