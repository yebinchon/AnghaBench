
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int sb_lock; } ;


 int I915_WRITE (int ,int ) ;
 int PIXCLK_GATE ;
 int PIXCLK_GATE_GATE ;
 int SBI_ICLK ;
 int SBI_SSCCTL6 ;
 int SBI_SSCCTL_DISABLE ;
 int intel_sbi_read (struct drm_i915_private*,int ,int ) ;
 int intel_sbi_write (struct drm_i915_private*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
{
 u32 temp;

 I915_WRITE(PIXCLK_GATE, PIXCLK_GATE_GATE);

 mutex_lock(&dev_priv->sb_lock);

 temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
 temp |= SBI_SSCCTL_DISABLE;
 intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);

 mutex_unlock(&dev_priv->sb_lock);
}
