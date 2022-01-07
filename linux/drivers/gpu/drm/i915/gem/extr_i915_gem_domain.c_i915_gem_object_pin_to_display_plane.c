
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_vma {int display_alignment; } ;
struct i915_ggtt_view {scalar_t__ type; } ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_gem_object {int pin_global; int read_domains; TYPE_1__ base; } ;


 int ENOSPC ;
 struct i915_vma* ERR_PTR (int) ;
 scalar_t__ HAS_WT (int ) ;
 int I915_CACHE_NONE ;
 int I915_CACHE_WT ;
 int I915_GEM_DOMAIN_GTT ;
 scalar_t__ I915_GGTT_VIEW_NORMAL ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 unsigned int PIN_MAPPABLE ;
 unsigned int PIN_NONBLOCK ;
 int __i915_gem_object_flush_for_display (struct drm_i915_gem_object*) ;
 int assert_object_held (struct drm_i915_gem_object*) ;
 struct i915_vma* i915_gem_object_ggtt_pin (struct drm_i915_gem_object*,struct i915_ggtt_view const*,int ,int ,unsigned int) ;
 int i915_gem_object_set_cache_level (struct drm_i915_gem_object*,int ) ;
 int max_t (int ,int ,int ) ;
 int to_i915 (int ) ;
 int u64 ;

struct i915_vma *
i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
         u32 alignment,
         const struct i915_ggtt_view *view,
         unsigned int flags)
{
 struct i915_vma *vma;
 int ret;

 assert_object_held(obj);




 obj->pin_global++;
 ret = i915_gem_object_set_cache_level(obj,
           HAS_WT(to_i915(obj->base.dev)) ?
           I915_CACHE_WT : I915_CACHE_NONE);
 if (ret) {
  vma = ERR_PTR(ret);
  goto err_unpin_global;
 }
 vma = ERR_PTR(-ENOSPC);
 if ((flags & PIN_MAPPABLE) == 0 &&
     (!view || view->type == I915_GGTT_VIEW_NORMAL))
  vma = i915_gem_object_ggtt_pin(obj, view, 0, alignment,
            flags |
            PIN_MAPPABLE |
            PIN_NONBLOCK);
 if (IS_ERR(vma))
  vma = i915_gem_object_ggtt_pin(obj, view, 0, alignment, flags);
 if (IS_ERR(vma))
  goto err_unpin_global;

 vma->display_alignment = max_t(u64, vma->display_alignment, alignment);

 __i915_gem_object_flush_for_display(obj);




 obj->read_domains |= I915_GEM_DOMAIN_GTT;

 return vma;

err_unpin_global:
 obj->pin_global--;
 return vma;
}
