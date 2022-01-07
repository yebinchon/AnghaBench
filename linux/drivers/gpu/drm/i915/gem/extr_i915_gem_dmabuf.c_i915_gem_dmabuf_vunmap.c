
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;
struct dma_buf {int dummy; } ;


 struct drm_i915_gem_object* dma_buf_to_obj (struct dma_buf*) ;
 int i915_gem_object_flush_map (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_map (struct drm_i915_gem_object*) ;

__attribute__((used)) static void i915_gem_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr)
{
 struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);

 i915_gem_object_flush_map(obj);
 i915_gem_object_unpin_map(obj);
}
