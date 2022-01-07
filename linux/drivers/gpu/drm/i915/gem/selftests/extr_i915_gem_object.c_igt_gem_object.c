
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_object_create_shmem (struct drm_i915_private*,int ) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int igt_gem_object(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct drm_i915_gem_object *obj;
 int err = -ENOMEM;



 obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
 if (IS_ERR(obj)) {
  err = PTR_ERR(obj);
  pr_err("i915_gem_object_create failed, err=%d\n", err);
  goto out;
 }

 err = 0;
 i915_gem_object_put(obj);
out:
 return err;
}
