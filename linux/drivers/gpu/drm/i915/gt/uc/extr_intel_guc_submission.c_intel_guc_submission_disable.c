
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;
struct intel_gt {int awake; } ;


 int GEM_BUG_ON (int ) ;
 int guc_clients_disable (struct intel_guc*) ;
 int guc_interrupts_release (struct intel_gt*) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;

void intel_guc_submission_disable(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 GEM_BUG_ON(gt->awake);

 guc_interrupts_release(gt);
 guc_clients_disable(guc);
}
