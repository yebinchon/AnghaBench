
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_gem_context {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {scalar_t__ phys; } ;
struct TYPE_4__ {TYPE_1__ page_sizes; } ;
struct drm_i915_gem_object {TYPE_2__ mm; } ;


 int ARRAY_SIZE (unsigned int const*) ;
 scalar_t__ I915_GTT_PAGE_SIZE_2M ;
 int I915_MM_NORMAL ;
 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 int PTR_ERR (struct drm_i915_gem_object*) ;





 int __i915_gem_object_put_pages (struct drm_i915_gem_object*,int ) ;
 struct drm_i915_gem_object* i915_gem_object_create_shmem (struct drm_i915_private*,unsigned int) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int igt_can_allocate_thp (struct drm_i915_private*) ;
 int igt_write_huge (struct i915_gem_context*,struct drm_i915_gem_object*) ;
 int pr_err (char*,unsigned int) ;
 int pr_info (char*,...) ;

__attribute__((used)) static int igt_ppgtt_gemfs_huge(void *arg)
{
 struct i915_gem_context *ctx = arg;
 struct drm_i915_private *i915 = ctx->i915;
 struct drm_i915_gem_object *obj;
 static const unsigned int sizes[] = {
  131,
  129,
  128,
  132,
  130,
 };
 int i;
 int err;






 if (!igt_can_allocate_thp(i915)) {
  pr_info("missing THP support, skipping\n");
  return 0;
 }

 for (i = 0; i < ARRAY_SIZE(sizes); ++i) {
  unsigned int size = sizes[i];

  obj = i915_gem_object_create_shmem(i915, size);
  if (IS_ERR(obj))
   return PTR_ERR(obj);

  err = i915_gem_object_pin_pages(obj);
  if (err)
   goto out_put;

  if (obj->mm.page_sizes.phys < I915_GTT_PAGE_SIZE_2M) {
   pr_info("finishing test early, gemfs unable to allocate huge-page(s) with size=%u\n",
    size);
   goto out_unpin;
  }

  err = igt_write_huge(ctx, obj);
  if (err) {
   pr_err("gemfs write-huge failed with size=%u\n",
          size);
   goto out_unpin;
  }

  i915_gem_object_unpin_pages(obj);
  __i915_gem_object_put_pages(obj, I915_MM_NORMAL);
  i915_gem_object_put(obj);
 }

 return 0;

out_unpin:
 i915_gem_object_unpin_pages(obj);
out_put:
 i915_gem_object_put(obj);

 return err;
}
