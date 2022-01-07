
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;
struct dma_buf {int dummy; } ;


 struct drm_i915_gem_object* dma_buf_to_obj (struct dma_buf*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int kunmap (int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static void i915_gem_dmabuf_kunmap(struct dma_buf *dma_buf, unsigned long page_num, void *addr)
{
 struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);

 kunmap(virt_to_page(addr));
 i915_gem_object_unpin_pages(obj);
}
