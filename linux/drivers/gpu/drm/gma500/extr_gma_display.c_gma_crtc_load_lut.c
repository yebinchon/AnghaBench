
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct psb_offset {int palette; } ;
struct gma_crtc {size_t pipe; int* lut_adj; } ;
struct TYPE_4__ {TYPE_1__* pipe; } ;
struct drm_psb_private {TYPE_2__ regs; struct psb_offset* regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {int gamma_size; int * gamma_store; int enabled; struct drm_device* dev; } ;
struct TYPE_3__ {int* palette; } ;


 int REG_WRITE (int,int) ;
 scalar_t__ gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;

void gma_crtc_load_lut(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);
 const struct psb_offset *map = &dev_priv->regmap[gma_crtc->pipe];
 int palreg = map->palette;
 u16 *r, *g, *b;
 int i;


 if (!crtc->enabled)
  return;

 r = crtc->gamma_store;
 g = r + crtc->gamma_size;
 b = g + crtc->gamma_size;

 if (gma_power_begin(dev, 0)) {
  for (i = 0; i < 256; i++) {
   REG_WRITE(palreg + 4 * i,
      (((*r++ >> 8) + gma_crtc->lut_adj[i]) << 16) |
      (((*g++ >> 8) + gma_crtc->lut_adj[i]) << 8) |
      ((*b++ >> 8) + gma_crtc->lut_adj[i]));
  }
  gma_power_end(dev);
 } else {
  for (i = 0; i < 256; i++) {

   dev_priv->regs.pipe[0].palette[i] =
    (((*r++ >> 8) + gma_crtc->lut_adj[i]) << 16) |
    (((*g++ >> 8) + gma_crtc->lut_adj[i]) << 8) |
    ((*b++ >> 8) + gma_crtc->lut_adj[i]);
  }

 }
}
