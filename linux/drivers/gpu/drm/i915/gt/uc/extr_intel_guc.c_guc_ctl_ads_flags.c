
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int ads_vma; } ;


 int GUC_ADS_ADDR_SHIFT ;
 int PAGE_SHIFT ;
 int intel_guc_ggtt_offset (struct intel_guc*,int ) ;

__attribute__((used)) static u32 guc_ctl_ads_flags(struct intel_guc *guc)
{
 u32 ads = intel_guc_ggtt_offset(guc, guc->ads_vma) >> PAGE_SHIFT;
 u32 flags = ads << GUC_ADS_ADDR_SHIFT;

 return flags;
}
