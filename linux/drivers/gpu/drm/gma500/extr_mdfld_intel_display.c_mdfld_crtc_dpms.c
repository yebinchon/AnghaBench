
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_offset {int dpll; int conf; int cntr; int base; int status; } ;
struct gma_crtc {int pipe; } ;
struct drm_psb_private {int* pipeconf; struct psb_offset* regmap; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DISPLAY_PLANE_ENABLE ;
 int DPLL_VCO_ENABLE ;




 int HS_CTRL_FIFO_EMPTY ;
 int HS_DATA_FIFO_EMPTY ;
 int MDFLD_PWR_GATE_EN ;
 int MIPI_DEVICE_READY_REG (int) ;
 int MIPI_GEN_FIFO_STAT_REG (int) ;
 int PIPEACONF ;
 int PIPEACONF_ENABLE ;
 int PIPECCONF ;
 int PIPECONF_CURSOR_OFF ;
 int PIPECONF_DSIPLL_LOCK ;
 int PIPECONF_PLANE_OFF ;
 int PIPE_VBLANK_STATUS ;
 int REG_READ (int) ;
 int REG_WRITE (int,int) ;
 int VGACNTRL ;
 int VGA_DISP_DISABLE ;
 int dev_dbg (int ,char*,...) ;
 int gma_crtc_load_lut (struct drm_crtc*) ;
 int gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 int mdfldWaitForPipeDisable (struct drm_device*,int) ;
 int mdfldWaitForPipeEnable (struct drm_device*,int) ;
 int mdfld_dsi_gen_fifo_ready (struct drm_device*,int ,int) ;
 int msleep (int) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;
 int udelay (int) ;

__attribute__((used)) static void mdfld_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct drm_device *dev = crtc->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);
 int pipe = gma_crtc->pipe;
 const struct psb_offset *map = &dev_priv->regmap[pipe];
 u32 pipeconf = dev_priv->pipeconf[pipe];
 u32 temp;
 int timeout = 0;

 dev_dbg(dev->dev, "mode = %d, pipe = %d\n", mode, pipe);




 if (!gma_power_begin(dev, 1))
  return;




 switch (mode) {
 case 130:
 case 129:
 case 128:

  temp = REG_READ(map->dpll);

  if ((temp & DPLL_VCO_ENABLE) == 0) {


   if (temp & MDFLD_PWR_GATE_EN) {
    temp &= ~MDFLD_PWR_GATE_EN;
    REG_WRITE(map->dpll, temp);

    udelay(500);
   }

   REG_WRITE(map->dpll, temp);
   REG_READ(map->dpll);

   udelay(500);

   REG_WRITE(map->dpll, temp | DPLL_VCO_ENABLE);
   REG_READ(map->dpll);






   while ((pipe != 2) && (timeout < 20000) &&
     !(REG_READ(map->conf) & PIPECONF_DSIPLL_LOCK)) {
    udelay(150);
    timeout++;
   }
  }


  temp = REG_READ(map->cntr);
  if ((temp & DISPLAY_PLANE_ENABLE) == 0) {
   REG_WRITE(map->cntr,
    temp | DISPLAY_PLANE_ENABLE);

   REG_WRITE(map->base, REG_READ(map->base));
  }


  temp = REG_READ(map->conf);
  if ((temp & PIPEACONF_ENABLE) == 0) {
   REG_WRITE(map->conf, pipeconf);


   mdfldWaitForPipeEnable(dev, pipe);
  }



  if (pipe == 0 || pipe == 2) {
   REG_WRITE(map->status, REG_READ(map->status));
   msleep(100);
   if (PIPE_VBLANK_STATUS & REG_READ(map->status))
    dev_dbg(dev->dev, "OK");
   else {
    dev_dbg(dev->dev, "STUCK!!!!");

    temp = REG_READ(map->cntr);
    REG_WRITE(map->cntr,
      temp & ~DISPLAY_PLANE_ENABLE);
    REG_WRITE(map->base, REG_READ(map->base));

    REG_WRITE(0xb048, 1);
    msleep(100);
    temp = REG_READ(map->conf);
    temp &= ~PIPEACONF_ENABLE;
    REG_WRITE(map->conf, temp);
    msleep(100);
    REG_WRITE(MIPI_DEVICE_READY_REG(pipe), 0);
    msleep(100);
    REG_WRITE(0xb004, REG_READ(0xb004));

    REG_WRITE(MIPI_DEVICE_READY_REG(pipe), 1);
    temp = REG_READ(map->cntr);
    REG_WRITE(map->cntr,
      temp | DISPLAY_PLANE_ENABLE);
    REG_WRITE(map->base, REG_READ(map->base));

    REG_WRITE(0xb048, 2);
    msleep(100);
    temp = REG_READ(map->conf);
    temp |= PIPEACONF_ENABLE;
    REG_WRITE(map->conf, temp);
   }
  }

  gma_crtc_load_lut(crtc);





  break;
 case 131:



  if (pipe != 1)
   mdfld_dsi_gen_fifo_ready(dev,
    MIPI_GEN_FIFO_STAT_REG(pipe),
    HS_CTRL_FIFO_EMPTY | HS_DATA_FIFO_EMPTY);


  REG_WRITE(VGACNTRL, VGA_DISP_DISABLE);


  temp = REG_READ(map->cntr);
  if ((temp & DISPLAY_PLANE_ENABLE) != 0) {
   REG_WRITE(map->cntr,
      temp & ~DISPLAY_PLANE_ENABLE);

   REG_WRITE(map->base, REG_READ(map->base));
   REG_READ(map->base);
  }


  temp = REG_READ(map->conf);
  if ((temp & PIPEACONF_ENABLE) != 0) {
   temp &= ~PIPEACONF_ENABLE;
   temp |= PIPECONF_PLANE_OFF | PIPECONF_CURSOR_OFF;
   REG_WRITE(map->conf, temp);
   REG_READ(map->conf);


   mdfldWaitForPipeDisable(dev, pipe);
  }

  temp = REG_READ(map->dpll);
  if (temp & DPLL_VCO_ENABLE) {
   if ((pipe != 1 && !((REG_READ(PIPEACONF)
    | REG_READ(PIPECCONF)) & PIPEACONF_ENABLE))
     || pipe == 1) {
    temp &= ~(DPLL_VCO_ENABLE);
    REG_WRITE(map->dpll, temp);
    REG_READ(map->dpll);


    udelay(500);
   }
  }
  break;
 }
 gma_power_end(dev);
}
