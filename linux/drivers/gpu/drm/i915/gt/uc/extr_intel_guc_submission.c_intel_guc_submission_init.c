
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {scalar_t__ stage_desc_pool; } ;


 int GEM_BUG_ON (int) ;
 int WARN_ON (int) ;
 int guc_clients_create (struct intel_guc*) ;
 int guc_stage_desc_pool_create (struct intel_guc*) ;
 int guc_stage_desc_pool_destroy (struct intel_guc*) ;
 int guc_verify_doorbells (struct intel_guc*) ;

int intel_guc_submission_init(struct intel_guc *guc)
{
 int ret;

 if (guc->stage_desc_pool)
  return 0;

 ret = guc_stage_desc_pool_create(guc);
 if (ret)
  return ret;




 GEM_BUG_ON(!guc->stage_desc_pool);

 WARN_ON(!guc_verify_doorbells(guc));
 ret = guc_clients_create(guc);
 if (ret)
  goto err_pool;

 return 0;

err_pool:
 guc_stage_desc_pool_destroy(guc);
 return ret;
}
