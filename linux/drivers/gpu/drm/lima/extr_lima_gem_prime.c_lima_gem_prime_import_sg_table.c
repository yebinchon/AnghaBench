
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct lima_device {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct lima_bo {struct drm_gem_object gem; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int size; } ;


 struct drm_gem_object* ERR_CAST (struct lima_bo*) ;
 scalar_t__ IS_ERR (struct lima_bo*) ;
 struct lima_bo* lima_bo_create (struct lima_device*,int ,int ,struct sg_table*) ;
 struct lima_device* to_lima_dev (struct drm_device*) ;

struct drm_gem_object *lima_gem_prime_import_sg_table(
 struct drm_device *dev, struct dma_buf_attachment *attach,
 struct sg_table *sgt)
{
 struct lima_device *ldev = to_lima_dev(dev);
 struct lima_bo *bo;

 bo = lima_bo_create(ldev, attach->dmabuf->size, 0, sgt);
 if (IS_ERR(bo))
  return ERR_CAST(bo);

 return &bo->gem;
}
