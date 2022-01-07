
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_power_well_regs {int driver; } ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int idx; int is_tc_tbt; struct i915_power_well_regs* regs; } ;
struct TYPE_4__ {TYPE_1__ hsw; int name; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int HSW_PWR_WELL_CTL_STATE (int) ;
 int WARN_ON (int) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
        struct i915_power_well *power_well)
{
 const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
 int pw_idx = power_well->desc->hsw.idx;


 if (intel_de_wait_for_set(dev_priv, regs->driver,
      HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
  DRM_DEBUG_KMS("%s power well enable timeout\n",
         power_well->desc->name);


  WARN_ON(!power_well->desc->hsw.is_tc_tbt);
 }
}
