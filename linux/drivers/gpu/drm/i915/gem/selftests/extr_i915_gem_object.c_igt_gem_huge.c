
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ total; } ;
struct TYPE_5__ {TYPE_1__ vm; } ;
struct drm_i915_private {TYPE_2__ ggtt; } ;
struct TYPE_6__ {unsigned int const size; } ;
struct drm_i915_gem_object {TYPE_3__ base; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 unsigned int const PAGE_SIZE ;
 int PTR_ERR (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* huge_gem_object (struct drm_i915_private*,unsigned int const,scalar_t__) ;
 scalar_t__ i915_gem_object_get_page (struct drm_i915_gem_object*,unsigned int) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int pr_err (char*,unsigned int const,unsigned int const,...) ;

__attribute__((used)) static int igt_gem_huge(void *arg)
{
 const unsigned int nreal = 509;
 struct drm_i915_private *i915 = arg;
 struct drm_i915_gem_object *obj;
 unsigned int n;
 int err;



 obj = huge_gem_object(i915,
         nreal * PAGE_SIZE,
         i915->ggtt.vm.total + PAGE_SIZE);
 if (IS_ERR(obj))
  return PTR_ERR(obj);

 err = i915_gem_object_pin_pages(obj);
 if (err) {
  pr_err("Failed to allocate %u pages (%lu total), err=%d\n",
         nreal, obj->base.size / PAGE_SIZE, err);
  goto out;
 }

 for (n = 0; n < obj->base.size / PAGE_SIZE; n++) {
  if (i915_gem_object_get_page(obj, n) !=
      i915_gem_object_get_page(obj, n % nreal)) {
   pr_err("Page lookup mismatch at index %u [%u]\n",
          n, n % nreal);
   err = -EINVAL;
   goto out_unpin;
  }
 }

out_unpin:
 i915_gem_object_unpin_pages(obj);
out:
 i915_gem_object_put(obj);
 return err;
}
