
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int i915; } ;


 int GEN7_MISCCPCTL ;
 int GEN8_DOP_CLOCK_GATE_GUC_ENABLE ;
 int GEN9LP_GT_PM_CONFIG ;
 int GEN9_GT_PM_CONFIG ;
 int GT_DOORBELL_ENABLE ;
 int GUC_ARAT_C6DIS ;
 int GUC_DISABLE_SRAM_INIT_TO_ZEROES ;
 int GUC_ENABLE_MIA_CACHING ;
 int GUC_ENABLE_MIA_CLOCK_GATING ;
 int GUC_ENABLE_READ_CACHE_FOR_SRAM_DATA ;
 int GUC_ENABLE_READ_CACHE_FOR_WOPCM_DATA ;
 int GUC_ENABLE_READ_CACHE_LOGIC ;
 int GUC_SHIM_CONTROL ;
 scalar_t__ IS_GEN (int ,int) ;
 scalar_t__ IS_GEN9_LP (int ) ;
 int intel_uncore_rmw (struct intel_uncore*,int ,int ,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int) ;

__attribute__((used)) static void guc_prepare_xfer(struct intel_uncore *uncore)
{
 u32 shim_flags = GUC_DISABLE_SRAM_INIT_TO_ZEROES |
    GUC_ENABLE_READ_CACHE_LOGIC |
    GUC_ENABLE_MIA_CACHING |
    GUC_ENABLE_READ_CACHE_FOR_SRAM_DATA |
    GUC_ENABLE_READ_CACHE_FOR_WOPCM_DATA |
    GUC_ENABLE_MIA_CLOCK_GATING;


 intel_uncore_write(uncore, GUC_SHIM_CONTROL, shim_flags);

 if (IS_GEN9_LP(uncore->i915))
  intel_uncore_write(uncore, GEN9LP_GT_PM_CONFIG, GT_DOORBELL_ENABLE);
 else
  intel_uncore_write(uncore, GEN9_GT_PM_CONFIG, GT_DOORBELL_ENABLE);

 if (IS_GEN(uncore->i915, 9)) {

  intel_uncore_rmw(uncore, GEN7_MISCCPCTL,
     0, GEN8_DOP_CLOCK_GATE_GUC_ENABLE);


  intel_uncore_write(uncore, GUC_ARAT_C6DIS, 0x1FF);
 }
}
