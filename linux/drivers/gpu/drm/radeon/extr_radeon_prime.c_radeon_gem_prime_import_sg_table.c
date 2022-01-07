
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_5__ {int mutex; int objects; } ;
struct radeon_device {TYPE_2__ gem; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_6__ {struct drm_gem_object base; } ;
struct radeon_bo {int prime_shared_count; TYPE_3__ tbo; int list; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct dma_resv {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_4__ {int size; struct dma_resv* resv; } ;


 struct drm_gem_object* ERR_PTR (int) ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_GTT ;
 int dma_resv_lock (struct dma_resv*,int *) ;
 int dma_resv_unlock (struct dma_resv*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_bo_create (struct radeon_device*,int ,int ,int,int ,int ,struct sg_table*,struct dma_resv*,struct radeon_bo**) ;

struct drm_gem_object *radeon_gem_prime_import_sg_table(struct drm_device *dev,
       struct dma_buf_attachment *attach,
       struct sg_table *sg)
{
 struct dma_resv *resv = attach->dmabuf->resv;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_bo *bo;
 int ret;

 dma_resv_lock(resv, ((void*)0));
 ret = radeon_bo_create(rdev, attach->dmabuf->size, PAGE_SIZE, 0,
          RADEON_GEM_DOMAIN_GTT, 0, sg, resv, &bo);
 dma_resv_unlock(resv);
 if (ret)
  return ERR_PTR(ret);

 mutex_lock(&rdev->gem.mutex);
 list_add_tail(&bo->list, &rdev->gem.objects);
 mutex_unlock(&rdev->gem.mutex);

 bo->prime_shared_count = 1;
 return &bo->tbo.base;
}
