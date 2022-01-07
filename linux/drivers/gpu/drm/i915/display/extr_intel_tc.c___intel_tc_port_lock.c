
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {int tc_lock_wakeref; int tc_link_refcount; int tc_lock; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;


 int POWER_DOMAIN_DISPLAY_CORE ;
 int WARN_ON (int ) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 scalar_t__ intel_tc_port_needs_reset (struct intel_digital_port*) ;
 int intel_tc_port_reset_mode (struct intel_digital_port*,int) ;
 int mutex_lock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
     int required_lanes)
{
 struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 intel_wakeref_t wakeref;

 wakeref = intel_display_power_get(i915, POWER_DOMAIN_DISPLAY_CORE);

 mutex_lock(&dig_port->tc_lock);

 if (!dig_port->tc_link_refcount &&
     intel_tc_port_needs_reset(dig_port))
  intel_tc_port_reset_mode(dig_port, required_lanes);

 WARN_ON(dig_port->tc_lock_wakeref);
 dig_port->tc_lock_wakeref = wakeref;
}
