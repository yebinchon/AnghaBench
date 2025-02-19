
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdvo_device_mapping {int initialized; int dvo_port; scalar_t__ slave_addr; int i2c_pin; int ddc_pin; int dvo_wiring; } ;
struct TYPE_2__ {int child_dev_num; struct sdvo_device_mapping* sdvo_mappings; struct child_device_config* child_dev; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct child_device_config {scalar_t__ slave_addr; int dvo_port; scalar_t__ slave2_addr; int i2c_pin; int ddc_pin; int dvo_wiring; } ;


 int DEVICE_PORT_DVOB ;
 int DEVICE_PORT_DVOC ;
 int DRM_DEBUG_KMS (char*,...) ;
 int IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 scalar_t__ SLAVE_ADDR1 ;
 scalar_t__ SLAVE_ADDR2 ;

__attribute__((used)) static void
parse_sdvo_device_mapping(struct drm_i915_private *dev_priv, u8 bdb_version)
{
 struct sdvo_device_mapping *mapping;
 const struct child_device_config *child;
 int i, count = 0;





 if (!IS_GEN_RANGE(dev_priv, 3, 7)) {
  DRM_DEBUG_KMS("Skipping SDVO device mapping\n");
  return;
 }

 for (i = 0, count = 0; i < dev_priv->vbt.child_dev_num; i++) {
  child = dev_priv->vbt.child_dev + i;

  if (child->slave_addr != SLAVE_ADDR1 &&
      child->slave_addr != SLAVE_ADDR2) {




   continue;
  }
  if (child->dvo_port != DEVICE_PORT_DVOB &&
      child->dvo_port != DEVICE_PORT_DVOC) {

   DRM_DEBUG_KMS("Incorrect SDVO port. Skip it\n");
   continue;
  }
  DRM_DEBUG_KMS("the SDVO device with slave addr %2x is found on"
         " %s port\n",
         child->slave_addr,
         (child->dvo_port == DEVICE_PORT_DVOB) ?
         "SDVOB" : "SDVOC");
  mapping = &dev_priv->vbt.sdvo_mappings[child->dvo_port - 1];
  if (!mapping->initialized) {
   mapping->dvo_port = child->dvo_port;
   mapping->slave_addr = child->slave_addr;
   mapping->dvo_wiring = child->dvo_wiring;
   mapping->ddc_pin = child->ddc_pin;
   mapping->i2c_pin = child->i2c_pin;
   mapping->initialized = 1;
   DRM_DEBUG_KMS("SDVO device: dvo=%x, addr=%x, wiring=%d, ddc_pin=%d, i2c_pin=%d\n",
          mapping->dvo_port,
          mapping->slave_addr,
          mapping->dvo_wiring,
          mapping->ddc_pin,
          mapping->i2c_pin);
  } else {
   DRM_DEBUG_KMS("Maybe one SDVO port is shared by "
      "two SDVO device.\n");
  }
  if (child->slave2_addr) {


   DRM_DEBUG_KMS("there exists the slave2_addr. Maybe this"
    " is a SDVO device with multiple inputs.\n");
  }
  count++;
 }

 if (!count) {

  DRM_DEBUG_KMS("No SDVO device info is found in VBT\n");
 }
}
