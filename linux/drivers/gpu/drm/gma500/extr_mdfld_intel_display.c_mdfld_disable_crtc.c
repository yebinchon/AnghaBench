
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_offset {int dpll; int conf; int base; int cntr; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;


 int DISPLAY_PLANE_ENABLE ;
 int DPLL_VCO_ENABLE ;
 int HS_CTRL_FIFO_EMPTY ;
 int HS_DATA_FIFO_EMPTY ;
 int MDFLD_PWR_GATE_EN ;
 int MIPI_GEN_FIFO_STAT_REG (int) ;
 int PIPEACONF ;
 int PIPEACONF_ENABLE ;
 int PIPECCONF ;
 int PIPECONF_CURSOR_OFF ;
 int PIPECONF_PLANE_OFF ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int dev_dbg (int ,char*,int) ;
 int mdfldWaitForPipeDisable (struct drm_device*,int) ;
 int mdfld_dsi_gen_fifo_ready (struct drm_device*,int ,int) ;
 int udelay (int) ;

void mdfld_disable_crtc(struct drm_device *dev, int pipe)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 const struct psb_offset *map = &dev_priv->regmap[pipe];
 u32 temp;

 dev_dbg(dev->dev, "pipe = %d\n", pipe);


 if (pipe != 1)
  mdfld_dsi_gen_fifo_ready(dev, MIPI_GEN_FIFO_STAT_REG(pipe),
    HS_CTRL_FIFO_EMPTY | HS_DATA_FIFO_EMPTY);


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
  if ((pipe != 1 &&
   !((REG_READ(PIPEACONF) | REG_READ(PIPECCONF))
    & PIPEACONF_ENABLE)) || pipe == 1) {
   temp &= ~(DPLL_VCO_ENABLE);
   REG_WRITE(map->dpll, temp);
   REG_READ(map->dpll);


   udelay(500);

   if (!(temp & MDFLD_PWR_GATE_EN)) {

    REG_WRITE(map->dpll, temp | MDFLD_PWR_GATE_EN);

    udelay(5000);
   }
  }
 }

}
