
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * remap_info; } ;
struct drm_i915_private {TYPE_1__ l3_parity; } ;


 scalar_t__ IS_I945GM (struct drm_i915_private*) ;
 int MAX_L3_SLICES ;
 int i945gm_vblank_work_fini (struct drm_i915_private*) ;
 int kfree (int ) ;

void intel_irq_fini(struct drm_i915_private *i915)
{
 int i;

 if (IS_I945GM(i915))
  i945gm_vblank_work_fini(i915);

 for (i = 0; i < MAX_L3_SLICES; ++i)
  kfree(i915->l3_parity.remap_info[i]);
}
