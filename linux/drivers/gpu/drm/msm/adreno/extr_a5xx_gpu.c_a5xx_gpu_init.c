
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct msm_gpu {TYPE_1__* aspace; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {struct msm_gpu base; int reg_offsets; int registers; } ;
struct a5xx_gpu {int lm_leakage; struct adreno_gpu base; } ;
struct TYPE_2__ {int mmu; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int ENOMEM ;
 int ENXIO ;
 struct msm_gpu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int a5xx_destroy (struct msm_gpu*) ;
 int a5xx_fault_handler ;
 int a5xx_preempt_init (struct msm_gpu*) ;
 int a5xx_register_offsets ;
 int a5xx_registers ;
 int adreno_gpu_init (struct drm_device*,struct platform_device*,struct adreno_gpu*,int *,int) ;
 int check_speed_bin (int *) ;
 int funcs ;
 struct a5xx_gpu* kzalloc (int,int ) ;
 int msm_mmu_set_fault_handler (int ,struct msm_gpu*,int ) ;

struct msm_gpu *a5xx_gpu_init(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct platform_device *pdev = priv->gpu_pdev;
 struct a5xx_gpu *a5xx_gpu = ((void*)0);
 struct adreno_gpu *adreno_gpu;
 struct msm_gpu *gpu;
 int ret;

 if (!pdev) {
  DRM_DEV_ERROR(dev->dev, "No A5XX device is defined\n");
  return ERR_PTR(-ENXIO);
 }

 a5xx_gpu = kzalloc(sizeof(*a5xx_gpu), GFP_KERNEL);
 if (!a5xx_gpu)
  return ERR_PTR(-ENOMEM);

 adreno_gpu = &a5xx_gpu->base;
 gpu = &adreno_gpu->base;

 adreno_gpu->registers = a5xx_registers;
 adreno_gpu->reg_offsets = a5xx_register_offsets;

 a5xx_gpu->lm_leakage = 0x4E001A;

 check_speed_bin(&pdev->dev);

 ret = adreno_gpu_init(dev, pdev, adreno_gpu, &funcs, 4);
 if (ret) {
  a5xx_destroy(&(a5xx_gpu->base.base));
  return ERR_PTR(ret);
 }

 if (gpu->aspace)
  msm_mmu_set_fault_handler(gpu->aspace->mmu, gpu, a5xx_fault_handler);


 a5xx_preempt_init(gpu);

 return gpu;
}
