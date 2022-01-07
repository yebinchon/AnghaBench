
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GEN7_FF_DS_SCHED_HW ;
 int GEN7_FF_SCHED_MASK ;
 int GEN7_FF_THREAD_MODE ;
 int GEN7_FF_TS_SCHED_HW ;
 int GEN7_FF_VS_SCHED_HW ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;

__attribute__((used)) static void gen7_setup_fixed_func_scheduler(struct drm_i915_private *dev_priv)
{
 u32 reg = I915_READ(GEN7_FF_THREAD_MODE);







 reg &= ~GEN7_FF_SCHED_MASK;
 reg |= GEN7_FF_TS_SCHED_HW;
 reg |= GEN7_FF_VS_SCHED_HW;
 reg |= GEN7_FF_DS_SCHED_HW;

 I915_WRITE(GEN7_FF_THREAD_MODE, reg);
}
