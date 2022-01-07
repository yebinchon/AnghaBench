
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {scalar_t__ active_display_unit; int dev; } ;


 int drm_mode_config_cleanup (int ) ;
 scalar_t__ vmw_du_legacy ;
 int vmw_kms_ldu_close_display (struct vmw_private*) ;

int vmw_kms_close(struct vmw_private *dev_priv)
{
 int ret = 0;






 drm_mode_config_cleanup(dev_priv->dev);
 if (dev_priv->active_display_unit == vmw_du_legacy)
  ret = vmw_kms_ldu_close_display(dev_priv);

 return ret;
}
