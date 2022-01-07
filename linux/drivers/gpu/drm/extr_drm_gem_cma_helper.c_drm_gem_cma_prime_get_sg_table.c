
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct drm_gem_object {int size; TYPE_1__* dev; } ;
struct drm_gem_cma_object {int paddr; int vaddr; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 struct sg_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dma_get_sgtable (int ,struct sg_table*,int ,int ,int ) ;
 int kfree (struct sg_table*) ;
 struct sg_table* kzalloc (int,int ) ;
 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

struct sg_table *drm_gem_cma_prime_get_sg_table(struct drm_gem_object *obj)
{
 struct drm_gem_cma_object *cma_obj = to_drm_gem_cma_obj(obj);
 struct sg_table *sgt;
 int ret;

 sgt = kzalloc(sizeof(*sgt), GFP_KERNEL);
 if (!sgt)
  return ERR_PTR(-ENOMEM);

 ret = dma_get_sgtable(obj->dev->dev, sgt, cma_obj->vaddr,
         cma_obj->paddr, obj->size);
 if (ret < 0)
  goto out;

 return sgt;

out:
 kfree(sgt);
 return ERR_PTR(ret);
}
