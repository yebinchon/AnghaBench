
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdvo_device_mapping {int slave_addr; } ;
struct intel_sdvo {scalar_t__ port; } ;
struct TYPE_2__ {struct sdvo_device_mapping* sdvo_mappings; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;


 scalar_t__ PORT_B ;

__attribute__((used)) static u8
intel_sdvo_get_slave_addr(struct drm_i915_private *dev_priv,
     struct intel_sdvo *sdvo)
{
 struct sdvo_device_mapping *my_mapping, *other_mapping;

 if (sdvo->port == PORT_B) {
  my_mapping = &dev_priv->vbt.sdvo_mappings[0];
  other_mapping = &dev_priv->vbt.sdvo_mappings[1];
 } else {
  my_mapping = &dev_priv->vbt.sdvo_mappings[1];
  other_mapping = &dev_priv->vbt.sdvo_mappings[0];
 }


 if (my_mapping->slave_addr)
  return my_mapping->slave_addr;





 if (other_mapping->slave_addr) {
  if (other_mapping->slave_addr == 0x70)
   return 0x72;
  else
   return 0x70;
 }





 if (sdvo->port == PORT_B)
  return 0x70;
 else
  return 0x72;
}
