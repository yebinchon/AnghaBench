
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int base; } ;
struct dma_buf {int base; } ;


 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct drm_i915_gem_object*) ;
 int dma_buf_put (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_object_create_shmem (struct drm_i915_private*,int ) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_prime_export (int *,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int igt_dmabuf_export(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct drm_i915_gem_object *obj;
 struct dma_buf *dmabuf;

 obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
 if (IS_ERR(obj))
  return PTR_ERR(obj);

 dmabuf = i915_gem_prime_export(&obj->base, 0);
 i915_gem_object_put(obj);
 if (IS_ERR(dmabuf)) {
  pr_err("i915_gem_prime_export failed with err=%d\n",
         (int)PTR_ERR(dmabuf));
  return PTR_ERR(dmabuf);
 }

 dma_buf_put(dmabuf);
 return 0;
}
