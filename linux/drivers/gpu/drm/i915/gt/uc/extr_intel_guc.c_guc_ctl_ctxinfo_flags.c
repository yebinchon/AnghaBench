
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int stage_desc_pool; } ;


 int GUC_CTL_BASE_ADDR_SHIFT ;
 int GUC_CTL_CTXNUM_IN16_SHIFT ;
 int GUC_MAX_STAGE_DESCRIPTORS ;
 int PAGE_SHIFT ;
 int intel_guc_ggtt_offset (struct intel_guc*,int ) ;
 scalar_t__ intel_guc_is_submission_supported (struct intel_guc*) ;

__attribute__((used)) static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
{
 u32 flags = 0;

 if (intel_guc_is_submission_supported(guc)) {
  u32 ctxnum, base;

  base = intel_guc_ggtt_offset(guc, guc->stage_desc_pool);
  ctxnum = GUC_MAX_STAGE_DESCRIPTORS / 16;

  base >>= PAGE_SHIFT;
  flags |= (base << GUC_CTL_BASE_ADDR_SHIFT) |
   (ctxnum << GUC_CTL_CTXNUM_IN16_SHIFT);
 }
 return flags;
}
