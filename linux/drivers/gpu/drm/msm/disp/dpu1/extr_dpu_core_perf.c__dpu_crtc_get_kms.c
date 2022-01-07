
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct dpu_kms {int dummy; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 int DPU_ERROR (char*) ;
 struct dpu_kms* to_dpu_kms (int ) ;

__attribute__((used)) static struct dpu_kms *_dpu_crtc_get_kms(struct drm_crtc *crtc)
{
 struct msm_drm_private *priv;

 if (!crtc->dev || !crtc->dev->dev_private) {
  DPU_ERROR("invalid device\n");
  return ((void*)0);
 }

 priv = crtc->dev->dev_private;
 if (!priv || !priv->kms) {
  DPU_ERROR("invalid kms\n");
  return ((void*)0);
 }

 return to_dpu_kms(priv->kms);
}
