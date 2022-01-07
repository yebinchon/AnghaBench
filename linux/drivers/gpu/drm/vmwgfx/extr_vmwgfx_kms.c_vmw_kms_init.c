
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {int texture_max_height; int texture_max_width; struct drm_device* dev; } ;
struct TYPE_2__ {int min_width; int min_height; int max_height; int max_width; int * funcs; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_create_suggested_offset_properties (struct drm_device*) ;
 int vmw_kms_create_hotplug_mode_update_property (struct vmw_private*) ;
 int vmw_kms_funcs ;
 int vmw_kms_ldu_init_display (struct vmw_private*) ;
 int vmw_kms_sou_init_display (struct vmw_private*) ;
 int vmw_kms_stdu_init_display (struct vmw_private*) ;

int vmw_kms_init(struct vmw_private *dev_priv)
{
 struct drm_device *dev = dev_priv->dev;
 int ret;

 drm_mode_config_init(dev);
 dev->mode_config.funcs = &vmw_kms_funcs;
 dev->mode_config.min_width = 1;
 dev->mode_config.min_height = 1;
 dev->mode_config.max_width = dev_priv->texture_max_width;
 dev->mode_config.max_height = dev_priv->texture_max_height;

 drm_mode_create_suggested_offset_properties(dev);
 vmw_kms_create_hotplug_mode_update_property(dev_priv);

 ret = vmw_kms_stdu_init_display(dev_priv);
 if (ret) {
  ret = vmw_kms_sou_init_display(dev_priv);
  if (ret)
   ret = vmw_kms_ldu_init_display(dev_priv);
 }

 return ret;
}
