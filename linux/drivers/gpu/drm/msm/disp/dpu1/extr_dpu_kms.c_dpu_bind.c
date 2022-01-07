
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct msm_drm_private {int * kms; } ;
struct dss_module_power {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dpu_kms {int rpm_enabled; int base; struct platform_device* pdev; struct drm_device* dev; struct dss_module_power mp; } ;
struct device {int dummy; } ;


 int DPU_ERROR (char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 struct dpu_kms* devm_kzalloc (int *,int,int ) ;
 int kms_funcs ;
 int msm_dss_parse_clock (struct platform_device*,struct dss_module_power*) ;
 int msm_kms_init (int *,int *) ;
 int platform_set_drvdata (struct platform_device*,struct dpu_kms*) ;
 int pm_runtime_enable (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int dpu_bind(struct device *dev, struct device *master, void *data)
{
 struct drm_device *ddev = dev_get_drvdata(master);
 struct platform_device *pdev = to_platform_device(dev);
 struct msm_drm_private *priv = ddev->dev_private;
 struct dpu_kms *dpu_kms;
 struct dss_module_power *mp;
 int ret = 0;

 dpu_kms = devm_kzalloc(&pdev->dev, sizeof(*dpu_kms), GFP_KERNEL);
 if (!dpu_kms)
  return -ENOMEM;

 mp = &dpu_kms->mp;
 ret = msm_dss_parse_clock(pdev, mp);
 if (ret) {
  DPU_ERROR("failed to parse clocks, ret=%d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, dpu_kms);

 msm_kms_init(&dpu_kms->base, &kms_funcs);
 dpu_kms->dev = ddev;
 dpu_kms->pdev = pdev;

 pm_runtime_enable(&pdev->dev);
 dpu_kms->rpm_enabled = 1;

 priv->kms = &dpu_kms->base;
 return ret;
}
