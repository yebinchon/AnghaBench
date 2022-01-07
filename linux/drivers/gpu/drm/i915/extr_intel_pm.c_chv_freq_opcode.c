
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_rps {int gpll_ref_freq; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;


 int DIV_ROUND_CLOSEST (int,int ) ;

__attribute__((used)) static int chv_freq_opcode(struct drm_i915_private *dev_priv, int val)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;


 return DIV_ROUND_CLOSEST(2 * 1000 * val, rps->gpll_ref_freq) * 2;
}
