
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct i915_vma {int fence_size; TYPE_3__* vm; scalar_t__ fence; } ;
struct i915_ggtt_view {scalar_t__ type; } ;
struct i915_address_space {int dummy; } ;
struct TYPE_6__ {int mappable_end; } ;
struct drm_i915_private {TYPE_2__ ggtt; } ;
struct TYPE_5__ {int size; TYPE_4__* dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct TYPE_8__ {int struct_mutex; } ;
struct TYPE_7__ {int mutex; } ;


 int E2BIG ;
 int ENODEV ;
 int ENOSPC ;
 struct i915_vma* ERR_PTR (int) ;
 scalar_t__ I915_GGTT_VIEW_NORMAL ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PIN_MAPPABLE ;
 int PIN_NONBLOCK ;
 int WARN (scalar_t__,char*,int ,int,int,int ) ;
 int i915_gem_object_is_tiled (struct drm_i915_gem_object*) ;
 scalar_t__ i915_gem_object_never_bind_ggtt (struct drm_i915_gem_object*) ;
 int i915_ggtt_offset (struct i915_vma*) ;
 struct i915_vma* i915_vma_instance (struct drm_i915_gem_object*,struct i915_address_space*,struct i915_ggtt_view const*) ;
 scalar_t__ i915_vma_is_active (struct i915_vma*) ;
 int i915_vma_is_map_and_fenceable (struct i915_vma*) ;
 scalar_t__ i915_vma_is_pinned (struct i915_vma*) ;
 scalar_t__ i915_vma_misplaced (struct i915_vma*,int,int,int) ;
 int i915_vma_pin (struct i915_vma*,int,int,int) ;
 int i915_vma_revoke_fence (struct i915_vma*) ;
 int i915_vma_unbind (struct i915_vma*) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (TYPE_4__*) ;

struct i915_vma *
i915_gem_object_pin(struct drm_i915_gem_object *obj,
      struct i915_address_space *vm,
      const struct i915_ggtt_view *view,
      u64 size,
      u64 alignment,
      u64 flags)
{
 struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
 struct i915_vma *vma;
 int ret;

 lockdep_assert_held(&obj->base.dev->struct_mutex);

 if (i915_gem_object_never_bind_ggtt(obj))
  return ERR_PTR(-ENODEV);

 if (flags & PIN_MAPPABLE &&
     (!view || view->type == I915_GGTT_VIEW_NORMAL)) {







  if (obj->base.size > dev_priv->ggtt.mappable_end)
   return ERR_PTR(-E2BIG);
  if (flags & PIN_NONBLOCK &&
      obj->base.size > dev_priv->ggtt.mappable_end / 2)
   return ERR_PTR(-ENOSPC);
 }

 vma = i915_vma_instance(obj, vm, view);
 if (IS_ERR(vma))
  return vma;

 if (i915_vma_misplaced(vma, size, alignment, flags)) {
  if (flags & PIN_NONBLOCK) {
   if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma))
    return ERR_PTR(-ENOSPC);

   if (flags & PIN_MAPPABLE &&
       vma->fence_size > dev_priv->ggtt.mappable_end / 2)
    return ERR_PTR(-ENOSPC);
  }

  WARN(i915_vma_is_pinned(vma),
       "bo is already pinned in ggtt with incorrect alignment:"
       " offset=%08x, req.alignment=%llx,"
       " req.map_and_fenceable=%d, vma->map_and_fenceable=%d\n",
       i915_ggtt_offset(vma), alignment,
       !!(flags & PIN_MAPPABLE),
       i915_vma_is_map_and_fenceable(vma));
  ret = i915_vma_unbind(vma);
  if (ret)
   return ERR_PTR(ret);
 }

 if (vma->fence && !i915_gem_object_is_tiled(obj)) {
  mutex_lock(&vma->vm->mutex);
  ret = i915_vma_revoke_fence(vma);
  mutex_unlock(&vma->vm->mutex);
  if (ret)
   return ERR_PTR(ret);
 }

 ret = i915_vma_pin(vma, size, alignment, flags);
 if (ret)
  return ERR_PTR(ret);

 return vma;
}
