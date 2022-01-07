
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ vbt; } ;
struct drm_psb_private {int child_dev_num; TYPE_1__ opregion; struct child_device_config* child_dev; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct child_device_config {scalar_t__ device_type; scalar_t__ addin_offset; scalar_t__ i2c_pin; } ;


 scalar_t__ DEVICE_TYPE_INT_LFP ;
 scalar_t__ DEVICE_TYPE_LFP ;

__attribute__((used)) static bool lvds_is_present_in_vbt(struct drm_device *dev,
       u8 *i2c_pin)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 int i;

 if (!dev_priv->child_dev_num)
  return 1;

 for (i = 0; i < dev_priv->child_dev_num; i++) {
  struct child_device_config *child = dev_priv->child_dev + i;





  if (child->device_type != DEVICE_TYPE_INT_LFP &&
      child->device_type != DEVICE_TYPE_LFP)
   continue;

  if (child->i2c_pin)
      *i2c_pin = child->i2c_pin;






  if (child->addin_offset)
   return 1;






  if (dev_priv->opregion.vbt)
   return 1;
 }

 return 0;
}
