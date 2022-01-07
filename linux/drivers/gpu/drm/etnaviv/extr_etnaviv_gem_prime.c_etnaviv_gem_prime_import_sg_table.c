
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct etnaviv_gem_object {struct drm_gem_object base; int pages; struct sg_table* sgt; int lock; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int size; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_PTR (int) ;
 int ETNA_BO_WC ;
 int GFP_KERNEL ;
 size_t PAGE_ALIGN (int ) ;
 size_t PAGE_SIZE ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_prime_sg_to_page_addr_arrays (struct sg_table*,int ,int *,int) ;
 int etnaviv_gem_new_private (struct drm_device*,size_t,int ,int *,struct etnaviv_gem_object**) ;
 int etnaviv_gem_obj_add (struct drm_device*,struct drm_gem_object*) ;
 int etnaviv_gem_prime_ops ;
 int etnaviv_prime_lock_class ;
 int kvmalloc_array (int,int,int ) ;
 int lockdep_set_class (int *,int *) ;

struct drm_gem_object *etnaviv_gem_prime_import_sg_table(struct drm_device *dev,
 struct dma_buf_attachment *attach, struct sg_table *sgt)
{
 struct etnaviv_gem_object *etnaviv_obj;
 size_t size = PAGE_ALIGN(attach->dmabuf->size);
 int ret, npages;

 ret = etnaviv_gem_new_private(dev, size, ETNA_BO_WC,
          &etnaviv_gem_prime_ops, &etnaviv_obj);
 if (ret < 0)
  return ERR_PTR(ret);

 lockdep_set_class(&etnaviv_obj->lock, &etnaviv_prime_lock_class);

 npages = size / PAGE_SIZE;

 etnaviv_obj->sgt = sgt;
 etnaviv_obj->pages = kvmalloc_array(npages, sizeof(struct page *), GFP_KERNEL);
 if (!etnaviv_obj->pages) {
  ret = -ENOMEM;
  goto fail;
 }

 ret = drm_prime_sg_to_page_addr_arrays(sgt, etnaviv_obj->pages,
            ((void*)0), npages);
 if (ret)
  goto fail;

 etnaviv_gem_obj_add(dev, &etnaviv_obj->base);

 return &etnaviv_obj->base;

fail:
 drm_gem_object_put_unlocked(&etnaviv_obj->base);

 return ERR_PTR(ret);
}
