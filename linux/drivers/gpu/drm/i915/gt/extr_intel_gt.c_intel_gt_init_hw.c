
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ggtt; } ;
struct drm_i915_private {int ggtt; TYPE_1__ gt; } ;



void intel_gt_init_hw(struct drm_i915_private *i915)
{
 i915->gt.ggtt = &i915->ggtt;
}
