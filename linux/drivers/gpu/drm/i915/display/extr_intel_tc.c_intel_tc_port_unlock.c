
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {int tc_lock; int tc_lock_wakeref; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;


 int POWER_DOMAIN_DISPLAY_CORE ;
 int fetch_and_zero (int *) ;
 int intel_display_power_put_async (struct drm_i915_private*,int ,int ) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_tc_port_unlock(struct intel_digital_port *dig_port)
{
 struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 intel_wakeref_t wakeref = fetch_and_zero(&dig_port->tc_lock_wakeref);

 mutex_unlock(&dig_port->tc_lock);

 intel_display_power_put_async(i915, POWER_DOMAIN_DISPLAY_CORE,
          wakeref);
}
