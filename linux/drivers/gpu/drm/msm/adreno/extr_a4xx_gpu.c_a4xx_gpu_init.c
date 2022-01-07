
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ocmem_buf {int len; int addr; } ;
struct msm_gpu {int aspace; scalar_t__ num_perfcntrs; int * perfcntrs; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {int gmem; struct msm_gpu base; int reg_offsets; int registers; } ;
struct a4xx_gpu {struct adreno_gpu base; int ocmem_base; struct ocmem_buf* ocmem_hdl; } ;


 int DBG (char*,int,int ) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int ENOMEM ;
 int ENXIO ;
 struct msm_gpu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int OCMEM_GRAPHICS ;
 int a4xx_destroy (struct msm_gpu*) ;
 int a4xx_register_offsets ;
 int a4xx_registers ;
 int adreno_gpu_init (struct drm_device*,struct platform_device*,struct adreno_gpu*,int *,int) ;
 scalar_t__ adreno_is_a4xx (struct adreno_gpu*) ;
 int funcs ;
 struct a4xx_gpu* kzalloc (int,int ) ;
 struct ocmem_buf* ocmem_allocate (int ,int) ;

struct msm_gpu *a4xx_gpu_init(struct drm_device *dev)
{
 struct a4xx_gpu *a4xx_gpu = ((void*)0);
 struct adreno_gpu *adreno_gpu;
 struct msm_gpu *gpu;
 struct msm_drm_private *priv = dev->dev_private;
 struct platform_device *pdev = priv->gpu_pdev;
 int ret;

 if (!pdev) {
  DRM_DEV_ERROR(dev->dev, "no a4xx device\n");
  ret = -ENXIO;
  goto fail;
 }

 a4xx_gpu = kzalloc(sizeof(*a4xx_gpu), GFP_KERNEL);
 if (!a4xx_gpu) {
  ret = -ENOMEM;
  goto fail;
 }

 adreno_gpu = &a4xx_gpu->base;
 gpu = &adreno_gpu->base;

 gpu->perfcntrs = ((void*)0);
 gpu->num_perfcntrs = 0;

 adreno_gpu->registers = a4xx_registers;
 adreno_gpu->reg_offsets = a4xx_register_offsets;

 ret = adreno_gpu_init(dev, pdev, adreno_gpu, &funcs, 1);
 if (ret)
  goto fail;


 if (adreno_is_a4xx(adreno_gpu)) {
 }

 if (!gpu->aspace) {







  DRM_DEV_ERROR(dev->dev, "No memory protection without IOMMU\n");
  ret = -ENXIO;
  goto fail;
 }

 return gpu;

fail:
 if (a4xx_gpu)
  a4xx_destroy(&a4xx_gpu->base.base);

 return ERR_PTR(ret);
}
