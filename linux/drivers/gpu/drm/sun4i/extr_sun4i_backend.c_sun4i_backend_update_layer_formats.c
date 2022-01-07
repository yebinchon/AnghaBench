
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int regs; } ;
struct sun4i_backend {TYPE_5__ engine; } ;
struct drm_plane_state {int alpha; TYPE_3__* crtc; struct drm_framebuffer* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {TYPE_4__* format; } ;
struct TYPE_9__ {int format; scalar_t__ is_yuv; } ;
struct TYPE_8__ {TYPE_2__* state; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ adjusted_mode; } ;


 int DRM_BLEND_ALPHA_OPAQUE ;
 int DRM_DEBUG_DRIVER (char*,...) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int SUN4I_BACKEND_ATTCTL_REG0 (int) ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA (int) ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_MASK ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN ;
 int SUN4I_BACKEND_ATTCTL_REG1 (int) ;
 int SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT ;
 int SUN4I_BACKEND_MODCTL_ITLMOD_EN ;
 int SUN4I_BACKEND_MODCTL_REG ;
 int regmap_update_bits (int ,int ,int,int) ;
 int sun4i_backend_drm_format_to_layer (int ,int*) ;
 int sun4i_backend_update_yuv_format (struct sun4i_backend*,int,struct drm_plane*) ;

int sun4i_backend_update_layer_formats(struct sun4i_backend *backend,
           int layer, struct drm_plane *plane)
{
 struct drm_plane_state *state = plane->state;
 struct drm_framebuffer *fb = state->fb;
 bool interlaced = 0;
 u32 val;
 int ret;


 regmap_update_bits(backend->engine.regs, SUN4I_BACKEND_ATTCTL_REG0(layer),
      SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN, 0);

 if (plane->state->crtc)
  interlaced = plane->state->crtc->state->adjusted_mode.flags
   & DRM_MODE_FLAG_INTERLACE;

 regmap_update_bits(backend->engine.regs, SUN4I_BACKEND_MODCTL_REG,
      SUN4I_BACKEND_MODCTL_ITLMOD_EN,
      interlaced ? SUN4I_BACKEND_MODCTL_ITLMOD_EN : 0);

 DRM_DEBUG_DRIVER("Switching display backend interlaced mode %s\n",
    interlaced ? "on" : "off");

 val = SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA(state->alpha >> 8);
 if (state->alpha != DRM_BLEND_ALPHA_OPAQUE)
  val |= SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN;
 regmap_update_bits(backend->engine.regs,
      SUN4I_BACKEND_ATTCTL_REG0(layer),
      SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_MASK |
      SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN,
      val);

 if (fb->format->is_yuv)
  return sun4i_backend_update_yuv_format(backend, layer, plane);

 ret = sun4i_backend_drm_format_to_layer(fb->format->format, &val);
 if (ret) {
  DRM_DEBUG_DRIVER("Invalid format\n");
  return ret;
 }

 regmap_update_bits(backend->engine.regs,
      SUN4I_BACKEND_ATTCTL_REG1(layer),
      SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT, val);

 return 0;
}
