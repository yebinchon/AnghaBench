
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {scalar_t__ stage_desc_pool; } ;


 int WARN_ON (int) ;
 int guc_clients_destroy (struct intel_guc*) ;
 int guc_stage_desc_pool_destroy (struct intel_guc*) ;
 int guc_verify_doorbells (struct intel_guc*) ;

void intel_guc_submission_fini(struct intel_guc *guc)
{
 guc_clients_destroy(guc);
 WARN_ON(!guc_verify_doorbells(guc));

 if (guc->stage_desc_pool)
  guc_stage_desc_pool_destroy(guc);
}
