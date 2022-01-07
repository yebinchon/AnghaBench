
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {int tc_legacy_port; int tc_phy_fia; scalar_t__ tc_link_refcount; int tc_lock; int tc_port_name; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum tc_port { ____Placeholder_tc_port } tc_port ;
typedef enum port { ____Placeholder_port } port ;


 int PORT_TC_NONE ;
 scalar_t__ WARN_ON (int) ;
 int intel_port_to_tc (struct drm_i915_private*,int) ;
 int mutex_init (int *) ;
 int port_name (int) ;
 int snprintf (int ,int,char*,int,int) ;
 int tc_port_to_fia (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
{
 struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 enum port port = dig_port->base.port;
 enum tc_port tc_port = intel_port_to_tc(i915, port);

 if (WARN_ON(tc_port == PORT_TC_NONE))
  return;

 snprintf(dig_port->tc_port_name, sizeof(dig_port->tc_port_name),
   "%c/TC#%d", port_name(port), tc_port + 1);

 mutex_init(&dig_port->tc_lock);
 dig_port->tc_legacy_port = is_legacy;
 dig_port->tc_link_refcount = 0;
 dig_port->tc_phy_fia = tc_port_to_fia(i915, tc_port);
}
