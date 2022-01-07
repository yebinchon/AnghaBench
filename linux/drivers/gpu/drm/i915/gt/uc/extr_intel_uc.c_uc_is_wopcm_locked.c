
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct intel_uc {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;


 int DMA_GUC_WOPCM_OFFSET ;
 int GUC_WOPCM_OFFSET_VALID ;
 int GUC_WOPCM_SIZE ;
 int GUC_WOPCM_SIZE_LOCKED ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 struct intel_gt* uc_to_gt (struct intel_uc*) ;

__attribute__((used)) static bool uc_is_wopcm_locked(struct intel_uc *uc)
{
 struct intel_gt *gt = uc_to_gt(uc);
 struct intel_uncore *uncore = gt->uncore;

 return (intel_uncore_read(uncore, GUC_WOPCM_SIZE) & GUC_WOPCM_SIZE_LOCKED) ||
        (intel_uncore_read(uncore, DMA_GUC_WOPCM_OFFSET) & GUC_WOPCM_OFFSET_VALID);
}
