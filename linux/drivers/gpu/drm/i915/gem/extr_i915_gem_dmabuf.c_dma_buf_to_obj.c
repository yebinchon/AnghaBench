
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;
struct dma_buf {int priv; } ;


 struct drm_i915_gem_object* to_intel_bo (int ) ;

__attribute__((used)) static struct drm_i915_gem_object *dma_buf_to_obj(struct dma_buf *buf)
{
 return to_intel_bo(buf->priv);
}
