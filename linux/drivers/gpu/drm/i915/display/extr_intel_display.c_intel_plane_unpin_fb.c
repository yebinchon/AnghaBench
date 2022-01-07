
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane_state {int flags; int vma; } ;
struct i915_vma {int dummy; } ;


 struct i915_vma* fetch_and_zero (int *) ;
 int intel_unpin_fb_vma (struct i915_vma*,int ) ;

__attribute__((used)) static void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
{
 struct i915_vma *vma;

 vma = fetch_and_zero(&old_plane_state->vma);
 if (vma)
  intel_unpin_fb_vma(vma, old_plane_state->flags);
}
