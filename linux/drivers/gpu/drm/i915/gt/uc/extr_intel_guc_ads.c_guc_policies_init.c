
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct guc_policy {int dummy; } ;
struct guc_policies {int is_valid; struct guc_policy** policy; int max_num_work_items; int dpc_promote_time; } ;


 size_t GUC_CLIENT_PRIORITY_NUM ;
 size_t GUC_MAX_ENGINE_CLASSES ;
 int POLICY_DEFAULT_DPC_PROMOTE_TIME_US ;
 int POLICY_MAX_NUM_WI ;
 int guc_policy_init (struct guc_policy*) ;

__attribute__((used)) static void guc_policies_init(struct guc_policies *policies)
{
 struct guc_policy *policy;
 u32 p, i;

 policies->dpc_promote_time = POLICY_DEFAULT_DPC_PROMOTE_TIME_US;
 policies->max_num_work_items = POLICY_MAX_NUM_WI;

 for (p = 0; p < GUC_CLIENT_PRIORITY_NUM; p++) {
  for (i = 0; i < GUC_MAX_ENGINE_CLASSES; i++) {
   policy = &policies->policy[p][i];

   guc_policy_init(policy);
  }
 }

 policies->is_valid = 1;
}
