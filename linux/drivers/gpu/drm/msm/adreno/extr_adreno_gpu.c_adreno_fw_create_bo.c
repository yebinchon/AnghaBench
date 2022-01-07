
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct msm_gpu {int aspace; int dev; } ;
struct firmware {scalar_t__ size; int * data; } ;
struct drm_gem_object {int dummy; } ;


 struct drm_gem_object* ERR_CAST (void*) ;
 scalar_t__ IS_ERR (void*) ;
 int MSM_BO_GPU_READONLY ;
 int MSM_BO_UNCACHED ;
 int memcpy (void*,int *,scalar_t__) ;
 void* msm_gem_kernel_new_locked (int ,scalar_t__,int,int ,struct drm_gem_object**,int *) ;
 int msm_gem_put_vaddr (struct drm_gem_object*) ;

struct drm_gem_object *adreno_fw_create_bo(struct msm_gpu *gpu,
  const struct firmware *fw, u64 *iova)
{
 struct drm_gem_object *bo;
 void *ptr;

 ptr = msm_gem_kernel_new_locked(gpu->dev, fw->size - 4,
  MSM_BO_UNCACHED | MSM_BO_GPU_READONLY, gpu->aspace, &bo, iova);

 if (IS_ERR(ptr))
  return ERR_CAST(ptr);

 memcpy(ptr, &fw->data[4], fw->size - 4);

 msm_gem_put_vaddr(bo);

 return bo;
}
