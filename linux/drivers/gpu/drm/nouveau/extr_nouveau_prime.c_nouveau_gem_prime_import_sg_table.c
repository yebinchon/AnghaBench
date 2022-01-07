
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sg_table {int dummy; } ;
struct nouveau_drm {int client; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_4__ {struct drm_gem_object base; } ;
struct nouveau_bo {TYPE_2__ bo; int valid_domains; } ;
struct drm_device {int dummy; } ;
struct dma_resv {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_3__ {int size; struct dma_resv* resv; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_CAST (struct nouveau_bo*) ;
 struct drm_gem_object* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct nouveau_bo*) ;
 int NOUVEAU_GEM_DOMAIN_GART ;
 int TTM_PL_FLAG_TT ;
 int dma_resv_lock (struct dma_resv*,int *) ;
 int dma_resv_unlock (struct dma_resv*) ;
 int drm_gem_object_init (struct drm_device*,struct drm_gem_object*,int ) ;
 struct nouveau_bo* nouveau_bo_alloc (int *,int *,int*,int ,int ,int ) ;
 int nouveau_bo_init (struct nouveau_bo*,int ,int,int ,struct sg_table*,struct dma_resv*) ;
 int nouveau_bo_ref (int *,struct nouveau_bo**) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

struct drm_gem_object *nouveau_gem_prime_import_sg_table(struct drm_device *dev,
        struct dma_buf_attachment *attach,
        struct sg_table *sg)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct drm_gem_object *obj;
 struct nouveau_bo *nvbo;
 struct dma_resv *robj = attach->dmabuf->resv;
 u64 size = attach->dmabuf->size;
 u32 flags = 0;
 int align = 0;
 int ret;

 flags = TTM_PL_FLAG_TT;

 dma_resv_lock(robj, ((void*)0));
 nvbo = nouveau_bo_alloc(&drm->client, &size, &align, flags, 0, 0);
 if (IS_ERR(nvbo)) {
  obj = ERR_CAST(nvbo);
  goto unlock;
 }

 nvbo->valid_domains = NOUVEAU_GEM_DOMAIN_GART;



 ret = drm_gem_object_init(dev, &nvbo->bo.base, size);
 if (ret) {
  nouveau_bo_ref(((void*)0), &nvbo);
  obj = ERR_PTR(-ENOMEM);
  goto unlock;
 }

 ret = nouveau_bo_init(nvbo, size, align, flags, sg, robj);
 if (ret) {
  nouveau_bo_ref(((void*)0), &nvbo);
  obj = ERR_PTR(ret);
  goto unlock;
 }

 obj = &nvbo->bo.base;

unlock:
 dma_resv_unlock(robj);
 return obj;
}
