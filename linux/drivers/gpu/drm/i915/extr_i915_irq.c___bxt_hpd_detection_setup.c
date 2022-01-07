
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int BXT_DDIA_HPD_INVERT ;
 int BXT_DDIB_HPD_INVERT ;
 int BXT_DDIC_HPD_INVERT ;
 int BXT_DDI_HPD_INVERT_MASK ;
 int BXT_DE_PORT_HP_DDIA ;
 int BXT_DE_PORT_HP_DDIB ;
 int BXT_DE_PORT_HP_DDIC ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PCH_PORT_HOTPLUG ;
 int PORTA_HOTPLUG_ENABLE ;
 int PORTB_HOTPLUG_ENABLE ;
 int PORTC_HOTPLUG_ENABLE ;
 int PORT_A ;
 int PORT_B ;
 int PORT_C ;
 scalar_t__ intel_bios_is_port_hpd_inverted (struct drm_i915_private*,int ) ;

__attribute__((used)) static void __bxt_hpd_detection_setup(struct drm_i915_private *dev_priv,
          u32 enabled_irqs)
{
 u32 hotplug;

 hotplug = I915_READ(PCH_PORT_HOTPLUG);
 hotplug |= PORTA_HOTPLUG_ENABLE |
     PORTB_HOTPLUG_ENABLE |
     PORTC_HOTPLUG_ENABLE;

 DRM_DEBUG_KMS("Invert bit setting: hp_ctl:%x hp_port:%x\n",
        hotplug, enabled_irqs);
 hotplug &= ~BXT_DDI_HPD_INVERT_MASK;





 if ((enabled_irqs & BXT_DE_PORT_HP_DDIA) &&
     intel_bios_is_port_hpd_inverted(dev_priv, PORT_A))
  hotplug |= BXT_DDIA_HPD_INVERT;
 if ((enabled_irqs & BXT_DE_PORT_HP_DDIB) &&
     intel_bios_is_port_hpd_inverted(dev_priv, PORT_B))
  hotplug |= BXT_DDIB_HPD_INVERT;
 if ((enabled_irqs & BXT_DE_PORT_HP_DDIC) &&
     intel_bios_is_port_hpd_inverted(dev_priv, PORT_C))
  hotplug |= BXT_DDIC_HPD_INVERT;

 I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
}
