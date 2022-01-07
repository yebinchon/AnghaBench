
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;
struct dma_buf {int dummy; } ;


 int I915_MAP_WB ;
 struct drm_i915_gem_object* dma_buf_to_obj (struct dma_buf*) ;
 void* i915_gem_object_pin_map (struct drm_i915_gem_object*,int ) ;

__attribute__((used)) static void *i915_gem_dmabuf_vmap(struct dma_buf *dma_buf)
{
 struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);

 return i915_gem_object_pin_map(obj, I915_MAP_WB);
}
