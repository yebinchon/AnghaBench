
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct i915_vma {scalar_t__ vm; scalar_t__ size; TYPE_1__ ggtt_view; } ;
struct i915_gem_context {scalar_t__ vm; } ;
struct TYPE_4__ {scalar_t__ size; } ;
struct drm_i915_gem_object {TYPE_2__ base; } ;


 scalar_t__ I915_GGTT_VIEW_NORMAL ;
 int pr_err (char*,...) ;

__attribute__((used)) static bool assert_vma(struct i915_vma *vma,
         struct drm_i915_gem_object *obj,
         struct i915_gem_context *ctx)
{
 bool ok = 1;

 if (vma->vm != ctx->vm) {
  pr_err("VMA created with wrong VM\n");
  ok = 0;
 }

 if (vma->size != obj->base.size) {
  pr_err("VMA created with wrong size, found %llu, expected %zu\n",
         vma->size, obj->base.size);
  ok = 0;
 }

 if (vma->ggtt_view.type != I915_GGTT_VIEW_NORMAL) {
  pr_err("VMA created with wrong type [%d]\n",
         vma->ggtt_view.type);
  ok = 0;
 }

 return ok;
}
