
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int dummy; } ;
struct drm_device {int dummy; } ;


 struct vmw_private* vmw_priv (struct drm_device*) ;

__attribute__((used)) static inline struct vmw_overlay *vmw_overlay(struct drm_device *dev)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 return dev_priv ? dev_priv->overlay_priv : ((void*)0);
}
