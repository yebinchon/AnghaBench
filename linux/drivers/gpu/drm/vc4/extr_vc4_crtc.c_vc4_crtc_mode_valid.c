
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int flags; } ;
struct TYPE_2__ {int id; } ;
struct drm_crtc {TYPE_1__ base; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_MODE_FLAG_DBLSCAN ;
 int MODE_NO_DBLESCAN ;
 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status vc4_crtc_mode_valid(struct drm_crtc *crtc,
      const struct drm_display_mode *mode)
{

 if (mode->flags & DRM_MODE_FLAG_DBLSCAN) {
  DRM_DEBUG_KMS("[CRTC:%d] Doublescan mode rejected.\n",
         crtc->base.id);
  return MODE_NO_DBLESCAN;
 }

 return MODE_OK;
}
