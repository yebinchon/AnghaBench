
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i915; } ;
struct i915_ggtt {TYPE_1__ vm; } ;
struct TYPE_4__ {int * space; } ;


 int DRM_DEBUG (char*) ;
 TYPE_2__ bl_info ;
 int intel_vgpu_active (int ) ;
 int vgt_deballoon_space (struct i915_ggtt*,int *) ;

void intel_vgt_deballoon(struct i915_ggtt *ggtt)
{
 int i;

 if (!intel_vgpu_active(ggtt->vm.i915))
  return;

 DRM_DEBUG("VGT deballoon.\n");

 for (i = 0; i < 4; i++)
  vgt_deballoon_space(ggtt, &bl_info.space[i]);
}
