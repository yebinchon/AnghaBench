
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int ilk_update_display_irq (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static inline void
ilk_disable_display_irq(struct drm_i915_private *dev_priv, u32 bits)
{
 ilk_update_display_irq(dev_priv, bits, 0);
}
