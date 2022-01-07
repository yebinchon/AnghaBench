
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i915_power_well_regs {int bios; int driver; } ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int idx; struct i915_power_well_regs* regs; } ;
struct TYPE_4__ {TYPE_1__ hsw; } ;


 int HSW_PWR_WELL_CTL_REQ (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
       struct i915_power_well *power_well)
{
 const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
 int pw_idx = power_well->desc->hsw.idx;
 u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
 u32 bios_req = I915_READ(regs->bios);


 if (bios_req & mask) {
  u32 drv_req = I915_READ(regs->driver);

  if (!(drv_req & mask))
   I915_WRITE(regs->driver, drv_req | mask);
  I915_WRITE(regs->bios, bios_req & ~mask);
 }
}
