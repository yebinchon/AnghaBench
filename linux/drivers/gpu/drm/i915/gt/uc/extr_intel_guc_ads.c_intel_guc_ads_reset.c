
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int ads_vma; } ;


 int __guc_ads_init (struct intel_guc*) ;

void intel_guc_ads_reset(struct intel_guc *guc)
{
 if (!guc->ads_vma)
  return;
 __guc_ads_init(guc);
}
