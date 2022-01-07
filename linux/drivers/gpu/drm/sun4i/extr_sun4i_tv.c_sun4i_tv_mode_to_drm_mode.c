
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {scalar_t__ vback_porch; scalar_t__ vsync_len; scalar_t__ vfront_porch; scalar_t__ vdisplay; scalar_t__ hback_porch; scalar_t__ hsync_len; scalar_t__ hfront_porch; scalar_t__ hdisplay; } ;
struct drm_display_mode {int clock; scalar_t__ vsync_end; scalar_t__ vtotal; scalar_t__ vsync_start; scalar_t__ vdisplay; scalar_t__ hsync_end; scalar_t__ htotal; scalar_t__ hsync_start; scalar_t__ hdisplay; int flags; int type; int name; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int DRM_MODE_TYPE_DRIVER ;

__attribute__((used)) static void sun4i_tv_mode_to_drm_mode(const struct tv_mode *tv_mode,
          struct drm_display_mode *mode)
{
 DRM_DEBUG_DRIVER("Creating mode %s\n", mode->name);

 mode->type = DRM_MODE_TYPE_DRIVER;
 mode->clock = 13500;
 mode->flags = DRM_MODE_FLAG_INTERLACE;

 mode->hdisplay = tv_mode->hdisplay;
 mode->hsync_start = mode->hdisplay + tv_mode->hfront_porch;
 mode->hsync_end = mode->hsync_start + tv_mode->hsync_len;
 mode->htotal = mode->hsync_end + tv_mode->hback_porch;

 mode->vdisplay = tv_mode->vdisplay;
 mode->vsync_start = mode->vdisplay + tv_mode->vfront_porch;
 mode->vsync_end = mode->vsync_start + tv_mode->vsync_len;
 mode->vtotal = mode->vsync_end + tv_mode->vback_porch;
}
