
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct msm_gpu {struct platform_device* pdev; } ;
struct adreno_gpu {TYPE_1__* info; } ;
struct TYPE_2__ {int zapfw; } ;


 int DRM_DEV_ERROR (int *,char*) ;
 int ENODEV ;
 int EPROBE_DEFER ;
 int qcom_scm_is_available () ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int zap_available ;
 int zap_shader_load_mdt (struct msm_gpu*,int ,int ) ;

int adreno_zap_shader_load(struct msm_gpu *gpu, u32 pasid)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct platform_device *pdev = gpu->pdev;


 if (!zap_available)
  return -ENODEV;


 if (!qcom_scm_is_available()) {
  DRM_DEV_ERROR(&pdev->dev, "SCM is not available\n");
  return -EPROBE_DEFER;
 }


 if (!adreno_gpu->info->zapfw) {
  zap_available = 0;
  DRM_DEV_ERROR(&pdev->dev,
   "Zap shader firmware file not specified for this target\n");
  return -ENODEV;
 }

 return zap_shader_load_mdt(gpu, adreno_gpu->info->zapfw, pasid);
}
