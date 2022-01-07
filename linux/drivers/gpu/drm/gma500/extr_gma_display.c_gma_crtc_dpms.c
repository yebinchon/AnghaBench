
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct psb_offset {int dpll; int conf; int base; int cntr; int status; } ;
struct gma_crtc {int pipe; int active; } ;
struct drm_psb_private {TYPE_1__* ops; struct psb_offset* regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {int (* update_wm ) (struct drm_device*,struct drm_crtc*) ;int (* disable_sr ) (struct drm_device*) ;} ;


 int DISPLAY_PLANE_ENABLE ;
 int DPLL_VCO_ENABLE ;




 int DSPARB ;
 scalar_t__ IS_CDV (struct drm_device*) ;
 int PIPEACONF_ENABLE ;
 int PIPE_FIFO_UNDERRUN ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int VGACNTRL ;
 int VGA_DISP_DISABLE ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int gma_crtc_load_lut (struct drm_crtc*) ;
 int gma_wait_for_vblank (struct drm_device*) ;
 int stub1 (struct drm_device*) ;
 int stub2 (struct drm_device*,struct drm_crtc*) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;
 int udelay (int) ;

void gma_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct drm_device *dev = crtc->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);
 int pipe = gma_crtc->pipe;
 const struct psb_offset *map = &dev_priv->regmap[pipe];
 u32 temp;





 if (IS_CDV(dev))
  dev_priv->ops->disable_sr(dev);

 switch (mode) {
 case 130:
 case 129:
 case 128:
  if (gma_crtc->active)
   break;

  gma_crtc->active = 1;


  temp = REG_READ(map->dpll);
  if ((temp & DPLL_VCO_ENABLE) == 0) {
   REG_WRITE(map->dpll, temp);
   REG_READ(map->dpll);

   udelay(150);
   REG_WRITE(map->dpll, temp | DPLL_VCO_ENABLE);
   REG_READ(map->dpll);

   udelay(150);
   REG_WRITE(map->dpll, temp | DPLL_VCO_ENABLE);
   REG_READ(map->dpll);

   udelay(150);
  }


  temp = REG_READ(map->cntr);
  if ((temp & DISPLAY_PLANE_ENABLE) == 0) {
   REG_WRITE(map->cntr,
      temp | DISPLAY_PLANE_ENABLE);

   REG_WRITE(map->base, REG_READ(map->base));
  }

  udelay(150);


  temp = REG_READ(map->conf);
  if ((temp & PIPEACONF_ENABLE) == 0)
   REG_WRITE(map->conf, temp | PIPEACONF_ENABLE);

  temp = REG_READ(map->status);
  temp &= ~(0xFFFF);
  temp |= PIPE_FIFO_UNDERRUN;
  REG_WRITE(map->status, temp);
  REG_READ(map->status);

  gma_crtc_load_lut(crtc);




  break;
 case 131:
  if (!gma_crtc->active)
   break;

  gma_crtc->active = 0;






  REG_WRITE(VGACNTRL, VGA_DISP_DISABLE);


  drm_crtc_vblank_off(crtc);


  gma_wait_for_vblank(dev);


  temp = REG_READ(map->cntr);
  if ((temp & DISPLAY_PLANE_ENABLE) != 0) {
   REG_WRITE(map->cntr,
      temp & ~DISPLAY_PLANE_ENABLE);

   REG_WRITE(map->base, REG_READ(map->base));
   REG_READ(map->base);
  }


  temp = REG_READ(map->conf);
  if ((temp & PIPEACONF_ENABLE) != 0) {
   REG_WRITE(map->conf, temp & ~PIPEACONF_ENABLE);
   REG_READ(map->conf);
  }


  gma_wait_for_vblank(dev);

  udelay(150);


  temp = REG_READ(map->dpll);
  if ((temp & DPLL_VCO_ENABLE) != 0) {
   REG_WRITE(map->dpll, temp & ~DPLL_VCO_ENABLE);
   REG_READ(map->dpll);
  }


  udelay(150);
  break;
 }

 if (IS_CDV(dev))
  dev_priv->ops->update_wm(dev, crtc);


 REG_WRITE(DSPARB, 0x3F3E);
}
