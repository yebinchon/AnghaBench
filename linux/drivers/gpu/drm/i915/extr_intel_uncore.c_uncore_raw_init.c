
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int i915; } ;


 int ASSIGN_RAW_READ_MMIO_VFUNCS (struct intel_uncore*,int ) ;
 int ASSIGN_RAW_WRITE_MMIO_VFUNCS (struct intel_uncore*,int ) ;
 int GEM_BUG_ON (int ) ;
 scalar_t__ IS_GEN (int ,int) ;
 int gen2 ;
 int gen5 ;
 int intel_uncore_has_forcewake (struct intel_uncore*) ;

__attribute__((used)) static void uncore_raw_init(struct intel_uncore *uncore)
{
 GEM_BUG_ON(intel_uncore_has_forcewake(uncore));

 if (IS_GEN(uncore->i915, 5)) {
  ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen5);
  ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen5);
 } else {
  ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen2);
  ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen2);
 }
}
