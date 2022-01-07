
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc {int huc; int guc; } ;


 int __confirm_options (struct intel_uc*) ;
 int intel_guc_init_early (int *) ;
 int intel_huc_init_early (int *) ;

void intel_uc_init_early(struct intel_uc *uc)
{
 intel_guc_init_early(&uc->guc);
 intel_huc_init_early(&uc->huc);

 __confirm_options(uc);
}
