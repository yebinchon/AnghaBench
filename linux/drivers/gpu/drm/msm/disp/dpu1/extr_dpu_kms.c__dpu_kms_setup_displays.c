
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_drm_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct dpu_kms {int dummy; } ;


 int _dpu_kms_initialize_dsi (struct drm_device*,struct msm_drm_private*,struct dpu_kms*) ;

__attribute__((used)) static int _dpu_kms_setup_displays(struct drm_device *dev,
        struct msm_drm_private *priv,
        struct dpu_kms *dpu_kms)
{





 return _dpu_kms_initialize_dsi(dev, priv, dpu_kms);
}
