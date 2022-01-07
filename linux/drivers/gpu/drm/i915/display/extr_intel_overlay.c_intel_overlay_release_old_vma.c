
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_overlay {TYPE_1__* crtc; int i915; int old_vma; } ;
struct i915_vma {int dummy; } ;
struct TYPE_2__ {int pipe; } ;


 int INTEL_FRONTBUFFER_OVERLAY (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct i915_vma* fetch_and_zero (int *) ;
 int i915_gem_object_unpin_from_display_plane (struct i915_vma*) ;
 int i915_vma_put (struct i915_vma*) ;
 int intel_frontbuffer_flip_complete (int ,int ) ;

__attribute__((used)) static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
{
 struct i915_vma *vma;

 vma = fetch_and_zero(&overlay->old_vma);
 if (WARN_ON(!vma))
  return;

 intel_frontbuffer_flip_complete(overlay->i915,
     INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));

 i915_gem_object_unpin_from_display_plane(vma);
 i915_vma_put(vma);
}
