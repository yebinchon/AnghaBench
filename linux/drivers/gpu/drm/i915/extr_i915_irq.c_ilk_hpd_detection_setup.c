
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DIGITAL_PORTA_HOTPLUG_ENABLE ;
 int DIGITAL_PORTA_PULSE_DURATION_2ms ;
 int DIGITAL_PORTA_PULSE_DURATION_MASK ;
 int DIGITAL_PORT_HOTPLUG_CNTRL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug;






 hotplug = I915_READ(DIGITAL_PORT_HOTPLUG_CNTRL);
 hotplug &= ~DIGITAL_PORTA_PULSE_DURATION_MASK;
 hotplug |= DIGITAL_PORTA_HOTPLUG_ENABLE |
     DIGITAL_PORTA_PULSE_DURATION_2ms;
 I915_WRITE(DIGITAL_PORT_HOTPLUG_CNTRL, hotplug);
}
