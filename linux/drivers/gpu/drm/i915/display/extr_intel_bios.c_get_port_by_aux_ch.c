
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {struct ddi_vbt_port_info* ddi_port_info; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct ddi_vbt_port_info {scalar_t__ alternate_aux_channel; scalar_t__ child; } ;
typedef enum port { ____Placeholder_port } port ;


 int I915_MAX_PORTS ;
 int PORT_A ;
 int PORT_NONE ;

__attribute__((used)) static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
{
 const struct ddi_vbt_port_info *info;
 enum port port;

 for (port = PORT_A; port < I915_MAX_PORTS; port++) {
  info = &i915->vbt.ddi_port_info[port];

  if (info->child && aux_ch == info->alternate_aux_channel)
   return port;
 }

 return PORT_NONE;
}
