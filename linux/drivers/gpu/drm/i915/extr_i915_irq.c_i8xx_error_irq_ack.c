
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_uncore {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;


 int EIR ;
 int EMR ;
 int intel_uncore_read16 (struct intel_uncore*,int ) ;
 int intel_uncore_write16 (struct intel_uncore*,int ,int) ;

__attribute__((used)) static void i8xx_error_irq_ack(struct drm_i915_private *i915,
          u16 *eir, u16 *eir_stuck)
{
 struct intel_uncore *uncore = &i915->uncore;
 u16 emr;

 *eir = intel_uncore_read16(uncore, EIR);

 if (*eir)
  intel_uncore_write16(uncore, EIR, *eir);

 *eir_stuck = intel_uncore_read16(uncore, EIR);
 if (*eir_stuck == 0)
  return;
 emr = intel_uncore_read16(uncore, EMR);
 intel_uncore_write16(uncore, EMR, 0xffff);
 intel_uncore_write16(uncore, EMR, emr | *eir_stuck);
}
