
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_psb_private {scalar_t__* pipestat; int dev; int vdc_irq_mask; } ;


 int PSB_INT_ENABLE_R ;
 int PSB_INT_MASK_R ;
 int PSB_WVDC32 (int ,int ) ;
 scalar_t__ gma_power_begin (int ,int) ;
 int gma_power_end (int ) ;
 int mid_pipe_event (int) ;

__attribute__((used)) static void mid_disable_pipe_event(struct drm_psb_private *dev_priv, int pipe)
{
 if (dev_priv->pipestat[pipe] == 0) {
  if (gma_power_begin(dev_priv->dev, 0)) {
   u32 pipe_event = mid_pipe_event(pipe);
   dev_priv->vdc_irq_mask &= ~pipe_event;
   PSB_WVDC32(~dev_priv->vdc_irq_mask, PSB_INT_MASK_R);
   PSB_WVDC32(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);
   gma_power_end(dev_priv->dev);
  }
 }
}
