
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_pipe {int htotal; int hsync; int vtotal; int vsync; } ;
struct psb_offset {int vsync; int vtotal; int hsync; int htotal; } ;
struct gma_crtc {int pipe; } ;
struct TYPE_2__ {struct psb_pipe* pipe; } ;
struct drm_psb_private {struct psb_offset* regmap; TYPE_1__ regs; } ;
struct drm_display_mode {int hdisplay; int htotal; int hsync_start; int hsync_end; int vdisplay; int vtotal; int vsync_start; int vsync_end; int clock; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {int dummy; } ;


 int GFP_KERNEL ;
 int REG_READ (int ) ;
 int cdv_intel_crtc_clock_get (struct drm_device*,struct drm_crtc*) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 scalar_t__ gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 struct drm_display_mode* kzalloc (int,int ) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;

struct drm_display_mode *cdv_intel_crtc_mode_get(struct drm_device *dev,
          struct drm_crtc *crtc)
{
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);
 int pipe = gma_crtc->pipe;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct psb_pipe *p = &dev_priv->regs.pipe[pipe];
 const struct psb_offset *map = &dev_priv->regmap[pipe];
 struct drm_display_mode *mode;
 int htot;
 int hsync;
 int vtot;
 int vsync;

 if (gma_power_begin(dev, 0)) {
  htot = REG_READ(map->htotal);
  hsync = REG_READ(map->hsync);
  vtot = REG_READ(map->vtotal);
  vsync = REG_READ(map->vsync);
  gma_power_end(dev);
 } else {
  htot = p->htotal;
  hsync = p->hsync;
  vtot = p->vtotal;
  vsync = p->vsync;
 }

 mode = kzalloc(sizeof(*mode), GFP_KERNEL);
 if (!mode)
  return ((void*)0);

 mode->clock = cdv_intel_crtc_clock_get(dev, crtc);
 mode->hdisplay = (htot & 0xffff) + 1;
 mode->htotal = ((htot & 0xffff0000) >> 16) + 1;
 mode->hsync_start = (hsync & 0xffff) + 1;
 mode->hsync_end = ((hsync & 0xffff0000) >> 16) + 1;
 mode->vdisplay = (vtot & 0xffff) + 1;
 mode->vtotal = ((vtot & 0xffff0000) >> 16) + 1;
 mode->vsync_start = (vsync & 0xffff) + 1;
 mode->vsync_end = ((vsync & 0xffff0000) >> 16) + 1;

 drm_mode_set_name(mode);
 drm_mode_set_crtcinfo(mode, 0);

 return mode;
}
