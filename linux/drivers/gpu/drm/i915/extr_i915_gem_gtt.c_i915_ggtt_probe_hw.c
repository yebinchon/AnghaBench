
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct drm_i915_private {TYPE_1__ drm; int gt; int ggtt; } ;


 int dev_info (int ,char*) ;
 int ggtt_probe_hw (int *,int *) ;
 scalar_t__ intel_vtd_active () ;

int i915_ggtt_probe_hw(struct drm_i915_private *i915)
{
 int ret;

 ret = ggtt_probe_hw(&i915->ggtt, &i915->gt);
 if (ret)
  return ret;

 if (intel_vtd_active())
  dev_info(i915->drm.dev, "VT-d active for gfx access\n");

 return 0;
}
