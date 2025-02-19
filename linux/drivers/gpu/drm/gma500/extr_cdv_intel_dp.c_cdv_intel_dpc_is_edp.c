
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int child_dev_num; struct child_device_config* child_dev; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct child_device_config {scalar_t__ dvo_port; scalar_t__ device_type; } ;


 scalar_t__ DEVICE_TYPE_eDP ;
 scalar_t__ PORT_IDPC ;

__attribute__((used)) static bool cdv_intel_dpc_is_edp(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct child_device_config *p_child;
 int i;

 if (!dev_priv->child_dev_num)
  return 0;

 for (i = 0; i < dev_priv->child_dev_num; i++) {
  p_child = dev_priv->child_dev + i;

  if (p_child->dvo_port == PORT_IDPC &&
      p_child->device_type == DEVICE_TYPE_eDP)
   return 1;
 }
 return 0;
}
