
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct evict_vma {TYPE_3__* vma; int completion; } ;
struct TYPE_8__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_9__ {int obj; TYPE_1__* vm; } ;
struct TYPE_7__ {struct drm_i915_private* i915; } ;


 int I915_TILING_Y ;
 int PIN_GLOBAL ;
 int PIN_MAPPABLE ;
 int complete (int *) ;
 int i915_gem_object_set_tiling (int ,int ,int) ;
 int i915_vma_pin (TYPE_3__*,int ,int ,int) ;
 int i915_vma_pin_fence (TYPE_3__*) ;
 int i915_vma_unpin (TYPE_3__*) ;
 int i915_vma_unpin_fence (TYPE_3__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int evict_fence(void *data)
{
 struct evict_vma *arg = data;
 struct drm_i915_private *i915 = arg->vma->vm->i915;
 int err;

 complete(&arg->completion);

 mutex_lock(&i915->drm.struct_mutex);


 err = i915_gem_object_set_tiling(arg->vma->obj, I915_TILING_Y, 512);
 if (err) {
  pr_err("Invalid Y-tiling settings; err:%d\n", err);
  goto out_unlock;
 }

 err = i915_vma_pin(arg->vma, 0, 0, PIN_GLOBAL | PIN_MAPPABLE);
 if (err) {
  pr_err("Unable to pin vma for Y-tiled fence; err:%d\n", err);
  goto out_unlock;
 }

 err = i915_vma_pin_fence(arg->vma);
 i915_vma_unpin(arg->vma);
 if (err) {
  pr_err("Unable to pin Y-tiled fence; err:%d\n", err);
  goto out_unlock;
 }

 i915_vma_unpin_fence(arg->vma);

out_unlock:
 mutex_unlock(&i915->drm.struct_mutex);

 return err;
}
