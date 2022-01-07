
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {TYPE_1__* funcs; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {int (* irq_uninstall ) (struct msm_kms*) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct msm_kms*) ;

__attribute__((used)) static void msm_irq_uninstall(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_kms *kms = priv->kms;
 BUG_ON(!kms);
 kms->funcs->irq_uninstall(kms);
}
