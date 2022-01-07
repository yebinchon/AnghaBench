
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int EIR ;
 int EMR ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
          u32 *eir, u32 *eir_stuck)
{
 u32 emr;

 *eir = I915_READ(EIR);

 I915_WRITE(EIR, *eir);

 *eir_stuck = I915_READ(EIR);
 if (*eir_stuck == 0)
  return;
 emr = I915_READ(EMR);
 I915_WRITE(EMR, 0xffffffff);
 I915_WRITE(EMR, emr | *eir_stuck);
}
