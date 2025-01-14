
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {unsigned long size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct dma_buf {int dummy; } ;


 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SHIFT ;
 struct drm_i915_gem_object* dma_buf_to_obj (struct dma_buf*) ;
 struct page* i915_gem_object_get_page (struct drm_i915_gem_object*,unsigned long) ;
 int i915_gem_object_has_struct_page (struct drm_i915_gem_object*) ;
 scalar_t__ i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 void* kmap (struct page*) ;

__attribute__((used)) static void *i915_gem_dmabuf_kmap(struct dma_buf *dma_buf, unsigned long page_num)
{
 struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
 struct page *page;

 if (page_num >= obj->base.size >> PAGE_SHIFT)
  return ((void*)0);

 if (!i915_gem_object_has_struct_page(obj))
  return ((void*)0);

 if (i915_gem_object_pin_pages(obj))
  return ((void*)0);


 page = i915_gem_object_get_page(obj, page_num);
 if (IS_ERR(page))
  goto err_unpin;

 return kmap(page);

err_unpin:
 i915_gem_object_unpin_pages(obj);
 return ((void*)0);
}
