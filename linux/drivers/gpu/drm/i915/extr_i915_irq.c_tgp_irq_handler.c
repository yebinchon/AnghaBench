
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int SDE_DDI_MASK_TGP ;
 int SDE_GMBUS_ICP ;
 int SDE_TC_MASK_TGP ;
 int SHOTPLUG_CTL_DDI ;
 int SHOTPLUG_CTL_TC ;
 int gmbus_irq_handler (struct drm_i915_private*) ;
 int hpd_tgp ;
 int intel_get_hpd_pins (struct drm_i915_private*,int*,int*,int,int,int ,int ) ;
 int intel_hpd_irq_handler (struct drm_i915_private*,int,int) ;
 int tgp_ddi_port_hotplug_long_detect ;
 int tgp_tc_port_hotplug_long_detect ;

__attribute__((used)) static void tgp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
{
 u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_MASK_TGP;
 u32 tc_hotplug_trigger = pch_iir & SDE_TC_MASK_TGP;
 u32 pin_mask = 0, long_mask = 0;

 if (ddi_hotplug_trigger) {
  u32 dig_hotplug_reg;

  dig_hotplug_reg = I915_READ(SHOTPLUG_CTL_DDI);
  I915_WRITE(SHOTPLUG_CTL_DDI, dig_hotplug_reg);

  intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
       ddi_hotplug_trigger,
       dig_hotplug_reg, hpd_tgp,
       tgp_ddi_port_hotplug_long_detect);
 }

 if (tc_hotplug_trigger) {
  u32 dig_hotplug_reg;

  dig_hotplug_reg = I915_READ(SHOTPLUG_CTL_TC);
  I915_WRITE(SHOTPLUG_CTL_TC, dig_hotplug_reg);

  intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
       tc_hotplug_trigger,
       dig_hotplug_reg, hpd_tgp,
       tgp_tc_port_hotplug_long_detect);
 }

 if (pin_mask)
  intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);

 if (pch_iir & SDE_GMBUS_ICP)
  gmbus_irq_handler(dev_priv);
}
