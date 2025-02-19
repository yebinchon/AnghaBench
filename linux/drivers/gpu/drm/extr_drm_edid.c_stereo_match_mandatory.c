
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stereo_mandatory_mode {scalar_t__ width; scalar_t__ height; unsigned int flags; scalar_t__ vrefresh; } ;
struct drm_display_mode {unsigned int flags; scalar_t__ hdisplay; scalar_t__ vdisplay; } ;


 unsigned int DRM_MODE_FLAG_INTERLACE ;
 scalar_t__ drm_mode_vrefresh (struct drm_display_mode const*) ;

__attribute__((used)) static bool
stereo_match_mandatory(const struct drm_display_mode *mode,
         const struct stereo_mandatory_mode *stereo_mode)
{
 unsigned int interlaced = mode->flags & DRM_MODE_FLAG_INTERLACE;

 return mode->hdisplay == stereo_mode->width &&
        mode->vdisplay == stereo_mode->height &&
        interlaced == (stereo_mode->flags & DRM_MODE_FLAG_INTERLACE) &&
        drm_mode_vrefresh(mode) == stereo_mode->vrefresh;
}
