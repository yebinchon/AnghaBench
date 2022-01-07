
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;


 int DBG (char*,struct drm_device*,unsigned int) ;
 int vblank_ctrl_queue_work (struct msm_drm_private*,unsigned int,int) ;

__attribute__((used)) static void msm_disable_vblank(struct drm_device *dev, unsigned int pipe)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_kms *kms = priv->kms;
 if (!kms)
  return;
 DBG("dev=%p, crtc=%u", dev, pipe);
 vblank_ctrl_queue_work(priv, pipe, 0);
}
