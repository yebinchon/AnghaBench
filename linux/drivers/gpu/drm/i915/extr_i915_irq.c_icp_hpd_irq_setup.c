
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int ICP_DDI_HPD_ENABLE_MASK ;
 int ICP_TC_HPD_ENABLE_MASK ;
 int SDE_DDI_MASK_ICP ;
 int SDE_TC_MASK_ICP ;
 int hpd_icp ;
 int ibx_display_interrupt_update (struct drm_i915_private*,int,int) ;
 int icp_hpd_detection_setup (struct drm_i915_private*,int ,int ) ;
 int intel_hpd_enabled_irqs (struct drm_i915_private*,int ) ;

__attribute__((used)) static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug_irqs, enabled_irqs;

 hotplug_irqs = SDE_DDI_MASK_ICP | SDE_TC_MASK_ICP;
 enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd_icp);

 ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);

 icp_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK,
    ICP_TC_HPD_ENABLE_MASK);
}
