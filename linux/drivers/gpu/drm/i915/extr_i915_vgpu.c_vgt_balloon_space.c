
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long reserved; } ;
struct i915_ggtt {TYPE_1__ vm; } ;
struct drm_mm_node {int dummy; } ;


 int DRM_INFO (char*,unsigned long,unsigned long,unsigned long) ;
 int EINVAL ;
 int I915_COLOR_UNEVICTABLE ;
 int i915_gem_gtt_reserve (TYPE_1__*,struct drm_mm_node*,unsigned long,unsigned long,int ,int ) ;

__attribute__((used)) static int vgt_balloon_space(struct i915_ggtt *ggtt,
        struct drm_mm_node *node,
        unsigned long start, unsigned long end)
{
 unsigned long size = end - start;
 int ret;

 if (start >= end)
  return -EINVAL;

 DRM_INFO("balloon space: range [ 0x%lx - 0x%lx ] %lu KiB.\n",
   start, end, size / 1024);
 ret = i915_gem_gtt_reserve(&ggtt->vm, node,
       size, start, I915_COLOR_UNEVICTABLE,
       0);
 if (!ret)
  ggtt->vm.reserved += size;

 return ret;
}
