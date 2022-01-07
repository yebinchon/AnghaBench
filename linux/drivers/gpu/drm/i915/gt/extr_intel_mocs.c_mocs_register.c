
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i915_reg_t ;
typedef enum intel_engine_id { ____Placeholder_intel_engine_id } intel_engine_id ;



 int GEN11_MFX2_MOCS (int) ;
 int GEN9_BLT_MOCS (int) ;
 int GEN9_GFX_MOCS (int) ;
 int GEN9_MFX0_MOCS (int) ;
 int GEN9_MFX1_MOCS (int) ;
 int GEN9_VEBOX_MOCS (int) ;
 int INVALID_MMIO_REG ;
 int MISSING_CASE (int) ;






__attribute__((used)) static i915_reg_t mocs_register(enum intel_engine_id engine_id, int index)
{
 switch (engine_id) {
 case 132:
  return GEN9_GFX_MOCS(index);
 case 131:
  return GEN9_MFX0_MOCS(index);
 case 133:
  return GEN9_BLT_MOCS(index);
 case 128:
  return GEN9_VEBOX_MOCS(index);
 case 130:
  return GEN9_MFX1_MOCS(index);
 case 129:
  return GEN11_MFX2_MOCS(index);
 default:
  MISSING_CASE(engine_id);
  return INVALID_MMIO_REG;
 }
}
