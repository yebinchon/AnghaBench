
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct etnaviv_vram_mapping {int use; int obj_node; struct etnaviv_iommu_context* context; struct etnaviv_gem_object* object; int scan_node; } ;
struct etnaviv_iommu_context {TYPE_1__* global; int lock; } ;
struct etnaviv_gem_object {int lock; int vram_list; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_2__ {int memory_base; } ;


 int ENOMEM ;
 struct etnaviv_vram_mapping* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct page**) ;
 int PTR_ERR (struct page**) ;
 int drm_gem_object_get (struct drm_gem_object*) ;
 struct page** etnaviv_gem_get_pages (struct etnaviv_gem_object*) ;
 struct etnaviv_vram_mapping* etnaviv_gem_get_vram_mapping (struct etnaviv_gem_object*,struct etnaviv_iommu_context*) ;
 int etnaviv_iommu_context_get (struct etnaviv_iommu_context*) ;
 int etnaviv_iommu_context_put (struct etnaviv_iommu_context*) ;
 int etnaviv_iommu_map_gem (struct etnaviv_iommu_context*,struct etnaviv_gem_object*,int ,struct etnaviv_vram_mapping*,int ) ;
 int kfree (struct etnaviv_vram_mapping*) ;
 struct etnaviv_vram_mapping* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

struct etnaviv_vram_mapping *etnaviv_gem_mapping_get(
 struct drm_gem_object *obj, struct etnaviv_iommu_context *mmu_context,
 u64 va)
{
 struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);
 struct etnaviv_vram_mapping *mapping;
 struct page **pages;
 int ret = 0;

 mutex_lock(&etnaviv_obj->lock);
 mapping = etnaviv_gem_get_vram_mapping(etnaviv_obj, mmu_context);
 if (mapping) {






  if (mapping->use == 0) {
   mutex_lock(&mmu_context->lock);
   if (mapping->context == mmu_context)
    mapping->use += 1;
   else
    mapping = ((void*)0);
   mutex_unlock(&mmu_context->lock);
   if (mapping)
    goto out;
  } else {
   mapping->use += 1;
   goto out;
  }
 }

 pages = etnaviv_gem_get_pages(etnaviv_obj);
 if (IS_ERR(pages)) {
  ret = PTR_ERR(pages);
  goto out;
 }





 mapping = etnaviv_gem_get_vram_mapping(etnaviv_obj, ((void*)0));
 if (!mapping) {
  mapping = kzalloc(sizeof(*mapping), GFP_KERNEL);
  if (!mapping) {
   ret = -ENOMEM;
   goto out;
  }

  INIT_LIST_HEAD(&mapping->scan_node);
  mapping->object = etnaviv_obj;
 } else {
  list_del(&mapping->obj_node);
 }

 etnaviv_iommu_context_get(mmu_context);
 mapping->context = mmu_context;
 mapping->use = 1;

 ret = etnaviv_iommu_map_gem(mmu_context, etnaviv_obj,
        mmu_context->global->memory_base,
        mapping, va);
 if (ret < 0) {
  etnaviv_iommu_context_put(mmu_context);
  kfree(mapping);
 } else {
  list_add_tail(&mapping->obj_node, &etnaviv_obj->vram_list);
 }

out:
 mutex_unlock(&etnaviv_obj->lock);

 if (ret)
  return ERR_PTR(ret);


 drm_gem_object_get(obj);
 return mapping;
}
