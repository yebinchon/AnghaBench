
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct i915_vma {int node; int evict_link; } ;
struct drm_mm_scan {int dummy; } ;


 int drm_mm_scan_add_block (struct drm_mm_scan*,int *) ;
 scalar_t__ i915_vma_is_pinned (struct i915_vma*) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static bool
mark_free(struct drm_mm_scan *scan,
   struct i915_vma *vma,
   unsigned int flags,
   struct list_head *unwind)
{
 if (i915_vma_is_pinned(vma))
  return 0;

 list_add(&vma->evict_link, unwind);
 return drm_mm_scan_add_block(scan, &vma->node);
}
