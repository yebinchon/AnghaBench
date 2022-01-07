
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int drm; } ;
struct drm_i915_gem_object {int dummy; } ;
typedef struct drm_i915_gem_object dma_buf ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct drm_i915_gem_object*) ;
 int dma_buf_put (struct drm_i915_gem_object*) ;
 void* dma_buf_vmap (struct drm_i915_gem_object*) ;
 int dma_buf_vunmap (struct drm_i915_gem_object*,void*) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_prime_import (int *,struct drm_i915_gem_object*) ;
 int memset (void*,int,int ) ;
 struct drm_i915_gem_object* mock_dmabuf (int) ;
 int pr_err (char*,...) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

__attribute__((used)) static int igt_dmabuf_import_ownership(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct drm_i915_gem_object *obj;
 struct dma_buf *dmabuf;
 void *ptr;
 int err;

 dmabuf = mock_dmabuf(1);
 if (IS_ERR(dmabuf))
  return PTR_ERR(dmabuf);

 ptr = dma_buf_vmap(dmabuf);
 if (!ptr) {
  pr_err("dma_buf_vmap failed\n");
  err = -ENOMEM;
  goto err_dmabuf;
 }

 memset(ptr, 0xc5, PAGE_SIZE);
 dma_buf_vunmap(dmabuf, ptr);

 obj = to_intel_bo(i915_gem_prime_import(&i915->drm, dmabuf));
 if (IS_ERR(obj)) {
  pr_err("i915_gem_prime_import failed with err=%d\n",
         (int)PTR_ERR(obj));
  err = PTR_ERR(obj);
  goto err_dmabuf;
 }

 dma_buf_put(dmabuf);

 err = i915_gem_object_pin_pages(obj);
 if (err) {
  pr_err("i915_gem_object_pin_pages failed with err=%d\n", err);
  goto out_obj;
 }

 err = 0;
 i915_gem_object_unpin_pages(obj);
out_obj:
 i915_gem_object_put(obj);
 return err;

err_dmabuf:
 dma_buf_put(dmabuf);
 return err;
}
