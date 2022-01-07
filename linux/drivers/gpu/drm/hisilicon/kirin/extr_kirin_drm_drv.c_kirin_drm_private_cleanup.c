
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_drm_private {int hw_ctx; } ;
struct kirin_drm_data {int (* cleanup_hw_ctx ) (int ) ;} ;
struct drm_device {struct kirin_drm_private* dev_private; int dev; } ;


 int devm_kfree (int ,struct kirin_drm_private*) ;
 scalar_t__ of_device_get_match_data (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void kirin_drm_private_cleanup(struct drm_device *dev)
{
 struct kirin_drm_private *kirin_priv = dev->dev_private;
 struct kirin_drm_data *data;

 data = (struct kirin_drm_data *)of_device_get_match_data(dev->dev);
 if (data->cleanup_hw_ctx)
  data->cleanup_hw_ctx(kirin_priv->hw_ctx);

 devm_kfree(dev->dev, kirin_priv);
 dev->dev_private = ((void*)0);
}
