
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_device {int dummy; } ;
struct rcar_du_crtc {struct rcar_du_device* dev; } ;
struct drm_display_mode {int flags; int htotal; int hsync_start; int vtotal; int vsync_end; } ;
struct drm_crtc {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_MODE_FLAG_INTERLACE ;
 int MODE_HBLANK_NARROW ;
 int MODE_NO_INTERLACE ;
 int MODE_OK ;
 int MODE_VBLANK_NARROW ;
 int RCAR_DU_FEATURE_INTERLACED ;
 int rcar_du_has (struct rcar_du_device*,int ) ;
 struct rcar_du_crtc* to_rcar_crtc (struct drm_crtc*) ;

__attribute__((used)) static enum drm_mode_status
rcar_du_crtc_mode_valid(struct drm_crtc *crtc,
   const struct drm_display_mode *mode)
{
 struct rcar_du_crtc *rcrtc = to_rcar_crtc(crtc);
 struct rcar_du_device *rcdu = rcrtc->dev;
 bool interlaced = mode->flags & DRM_MODE_FLAG_INTERLACE;
 unsigned int vbp;

 if (interlaced && !rcar_du_has(rcdu, RCAR_DU_FEATURE_INTERLACED))
  return MODE_NO_INTERLACE;





 if (mode->htotal - mode->hsync_start < 20)
  return MODE_HBLANK_NARROW;

 vbp = (mode->vtotal - mode->vsync_end) / (interlaced ? 2 : 1);
 if (vbp < 3)
  return MODE_VBLANK_NARROW;

 return MODE_OK;
}
