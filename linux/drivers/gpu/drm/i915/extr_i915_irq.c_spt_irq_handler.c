
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PCH_PORT_HOTPLUG ;
 int PCH_PORT_HOTPLUG2 ;
 int SDE_GMBUS_CPT ;
 int SDE_HOTPLUG_MASK_SPT ;
 int SDE_PORTE_HOTPLUG_SPT ;
 int gmbus_irq_handler (struct drm_i915_private*) ;
 int hpd_spt ;
 int intel_get_hpd_pins (struct drm_i915_private*,int*,int*,int,int,int ,int ) ;
 int intel_hpd_irq_handler (struct drm_i915_private*,int,int) ;
 int spt_port_hotplug2_long_detect ;
 int spt_port_hotplug_long_detect ;

__attribute__((used)) static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
{
 u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_SPT &
  ~SDE_PORTE_HOTPLUG_SPT;
 u32 hotplug2_trigger = pch_iir & SDE_PORTE_HOTPLUG_SPT;
 u32 pin_mask = 0, long_mask = 0;

 if (hotplug_trigger) {
  u32 dig_hotplug_reg;

  dig_hotplug_reg = I915_READ(PCH_PORT_HOTPLUG);
  I915_WRITE(PCH_PORT_HOTPLUG, dig_hotplug_reg);

  intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
       hotplug_trigger, dig_hotplug_reg, hpd_spt,
       spt_port_hotplug_long_detect);
 }

 if (hotplug2_trigger) {
  u32 dig_hotplug_reg;

  dig_hotplug_reg = I915_READ(PCH_PORT_HOTPLUG2);
  I915_WRITE(PCH_PORT_HOTPLUG2, dig_hotplug_reg);

  intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
       hotplug2_trigger, dig_hotplug_reg, hpd_spt,
       spt_port_hotplug2_long_detect);
 }

 if (pin_mask)
  intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);

 if (pch_iir & SDE_GMBUS_CPT)
  gmbus_irq_handler(dev_priv);
}
