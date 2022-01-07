
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_PCH_LPT_LP (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PCH_PORT_HOTPLUG ;
 int PORTA_HOTPLUG_ENABLE ;
 int PORTB_HOTPLUG_ENABLE ;
 int PORTB_PULSE_DURATION_2ms ;
 int PORTB_PULSE_DURATION_MASK ;
 int PORTC_HOTPLUG_ENABLE ;
 int PORTC_PULSE_DURATION_2ms ;
 int PORTC_PULSE_DURATION_MASK ;
 int PORTD_HOTPLUG_ENABLE ;
 int PORTD_PULSE_DURATION_2ms ;
 int PORTD_PULSE_DURATION_MASK ;

__attribute__((used)) static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug;






 hotplug = I915_READ(PCH_PORT_HOTPLUG);
 hotplug &= ~(PORTB_PULSE_DURATION_MASK |
       PORTC_PULSE_DURATION_MASK |
       PORTD_PULSE_DURATION_MASK);
 hotplug |= PORTB_HOTPLUG_ENABLE | PORTB_PULSE_DURATION_2ms;
 hotplug |= PORTC_HOTPLUG_ENABLE | PORTC_PULSE_DURATION_2ms;
 hotplug |= PORTD_HOTPLUG_ENABLE | PORTD_PULSE_DURATION_2ms;




 if (HAS_PCH_LPT_LP(dev_priv))
  hotplug |= PORTA_HOTPLUG_ENABLE;
 I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
}
