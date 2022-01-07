
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CHASSIS_CLK_REQ_DURATION (int) ;
 int CHASSIS_CLK_REQ_DURATION_MASK ;
 scalar_t__ HAS_PCH_CNP (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PCH_PORT_HOTPLUG ;
 int PCH_PORT_HOTPLUG2 ;
 int PORTA_HOTPLUG_ENABLE ;
 int PORTB_HOTPLUG_ENABLE ;
 int PORTC_HOTPLUG_ENABLE ;
 int PORTD_HOTPLUG_ENABLE ;
 int PORTE_HOTPLUG_ENABLE ;
 int SOUTH_CHICKEN1 ;

__attribute__((used)) static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
{
 u32 val, hotplug;


 if (HAS_PCH_CNP(dev_priv)) {
  val = I915_READ(SOUTH_CHICKEN1);
  val &= ~CHASSIS_CLK_REQ_DURATION_MASK;
  val |= CHASSIS_CLK_REQ_DURATION(0xf);
  I915_WRITE(SOUTH_CHICKEN1, val);
 }


 hotplug = I915_READ(PCH_PORT_HOTPLUG);
 hotplug |= PORTA_HOTPLUG_ENABLE |
     PORTB_HOTPLUG_ENABLE |
     PORTC_HOTPLUG_ENABLE |
     PORTD_HOTPLUG_ENABLE;
 I915_WRITE(PCH_PORT_HOTPLUG, hotplug);

 hotplug = I915_READ(PCH_PORT_HOTPLUG2);
 hotplug |= PORTE_HOTPLUG_ENABLE;
 I915_WRITE(PCH_PORT_HOTPLUG2, hotplug);
}
