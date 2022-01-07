
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_vgem_gem_object {struct drm_gem_object base; int pages; struct sg_table* table; int pages_pin_count; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int size; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_CAST (struct drm_vgem_gem_object*) ;
 struct drm_gem_object* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_vgem_gem_object*) ;
 int PAGE_ALIGN (int ) ;
 int PAGE_SIZE ;
 struct drm_vgem_gem_object* __vgem_gem_create (struct drm_device*,int ) ;
 int __vgem_gem_destroy (struct drm_vgem_gem_object*) ;
 int drm_prime_sg_to_page_addr_arrays (struct sg_table*,int ,int *,int) ;
 int kvmalloc_array (int,int,int ) ;

__attribute__((used)) static struct drm_gem_object *vgem_prime_import_sg_table(struct drm_device *dev,
   struct dma_buf_attachment *attach, struct sg_table *sg)
{
 struct drm_vgem_gem_object *obj;
 int npages;

 obj = __vgem_gem_create(dev, attach->dmabuf->size);
 if (IS_ERR(obj))
  return ERR_CAST(obj);

 npages = PAGE_ALIGN(attach->dmabuf->size) / PAGE_SIZE;

 obj->table = sg;
 obj->pages = kvmalloc_array(npages, sizeof(struct page *), GFP_KERNEL);
 if (!obj->pages) {
  __vgem_gem_destroy(obj);
  return ERR_PTR(-ENOMEM);
 }

 obj->pages_pin_count++;
 drm_prime_sg_to_page_addr_arrays(obj->table, obj->pages, ((void*)0),
     npages);
 return &obj->base;
}
