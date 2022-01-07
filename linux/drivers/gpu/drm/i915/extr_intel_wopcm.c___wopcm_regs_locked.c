
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;


 int DMA_GUC_WOPCM_OFFSET ;
 int GUC_WOPCM_OFFSET_MASK ;
 int GUC_WOPCM_OFFSET_VALID ;
 int GUC_WOPCM_SIZE ;
 int GUC_WOPCM_SIZE_LOCKED ;
 int GUC_WOPCM_SIZE_MASK ;
 int intel_uncore_read (struct intel_uncore*,int ) ;

__attribute__((used)) static bool __wopcm_regs_locked(struct intel_uncore *uncore,
    u32 *guc_wopcm_base, u32 *guc_wopcm_size)
{
 u32 reg_base = intel_uncore_read(uncore, DMA_GUC_WOPCM_OFFSET);
 u32 reg_size = intel_uncore_read(uncore, GUC_WOPCM_SIZE);

 if (!(reg_size & GUC_WOPCM_SIZE_LOCKED) ||
     !(reg_base & GUC_WOPCM_OFFSET_VALID))
  return 0;

 *guc_wopcm_base = reg_base & GUC_WOPCM_OFFSET_MASK;
 *guc_wopcm_size = reg_size & GUC_WOPCM_SIZE_MASK;
 return 1;
}
