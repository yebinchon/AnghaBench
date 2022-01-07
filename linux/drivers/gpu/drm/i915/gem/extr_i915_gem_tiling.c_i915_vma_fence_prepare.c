
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ size; int start; } ;
struct i915_vma {TYPE_2__ node; int size; TYPE_1__* vm; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {struct drm_i915_private* i915; } ;


 int IS_ALIGNED (int ,scalar_t__) ;
 scalar_t__ i915_gem_fence_alignment (struct drm_i915_private*,int ,int,unsigned int) ;
 scalar_t__ i915_gem_fence_size (struct drm_i915_private*,int ,int,unsigned int) ;
 int i915_vma_is_map_and_fenceable (struct i915_vma*) ;

__attribute__((used)) static bool i915_vma_fence_prepare(struct i915_vma *vma,
       int tiling_mode, unsigned int stride)
{
 struct drm_i915_private *i915 = vma->vm->i915;
 u32 size, alignment;

 if (!i915_vma_is_map_and_fenceable(vma))
  return 1;

 size = i915_gem_fence_size(i915, vma->size, tiling_mode, stride);
 if (vma->node.size < size)
  return 0;

 alignment = i915_gem_fence_alignment(i915, vma->size, tiling_mode, stride);
 if (!IS_ALIGNED(vma->node.start, alignment))
  return 0;

 return 1;
}
