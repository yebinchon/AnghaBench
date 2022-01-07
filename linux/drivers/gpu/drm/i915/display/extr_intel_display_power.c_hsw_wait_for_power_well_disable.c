
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i915_power_well_regs {int driver; } ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int idx; struct i915_power_well_regs* regs; } ;
struct TYPE_4__ {int name; TYPE_1__ hsw; } ;


 int DRM_DEBUG_KMS (char*,int ,int,int,int,int) ;
 int HSW_PWR_WELL_CTL_STATE (int) ;
 int I915_READ (int ) ;
 int hsw_power_well_requesters (struct drm_i915_private*,struct i915_power_well_regs const*,int) ;
 int wait_for (int,int) ;

__attribute__((used)) static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
         struct i915_power_well *power_well)
{
 const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
 int pw_idx = power_well->desc->hsw.idx;
 bool disabled;
 u32 reqs;
 wait_for((disabled = !(I915_READ(regs->driver) &
          HSW_PWR_WELL_CTL_STATE(pw_idx))) ||
   (reqs = hsw_power_well_requesters(dev_priv, regs, pw_idx)), 1);
 if (disabled)
  return;

 DRM_DEBUG_KMS("%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
        power_well->desc->name,
        !!(reqs & 1), !!(reqs & 2), !!(reqs & 4), !!(reqs & 8));
}
