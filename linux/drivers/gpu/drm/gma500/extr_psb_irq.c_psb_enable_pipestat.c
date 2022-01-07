
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_psb_private {int* pipestat; int dev; } ;


 int PSB_RVDC32 (int) ;
 int PSB_WVDC32 (int,int) ;
 scalar_t__ gma_power_begin (int ,int) ;
 int gma_power_end (int ) ;
 int psb_pipestat (int) ;

void
psb_enable_pipestat(struct drm_psb_private *dev_priv, int pipe, u32 mask)
{
 if ((dev_priv->pipestat[pipe] & mask) != mask) {
  u32 reg = psb_pipestat(pipe);
  dev_priv->pipestat[pipe] |= mask;

  if (gma_power_begin(dev_priv->dev, 0)) {
   u32 writeVal = PSB_RVDC32(reg);
   writeVal |= (mask | (mask >> 16));
   PSB_WVDC32(writeVal, reg);
   (void) PSB_RVDC32(reg);
   gma_power_end(dev_priv->dev);
  }
 }
}
