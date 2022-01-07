
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;
struct intel_gt {int uncore; } ;


 int GUC_SEND_INTERRUPT ;
 int GUC_SEND_TRIGGER ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int intel_uncore_write (int ,int ,int ) ;

__attribute__((used)) static void gen8_guc_raise_irq(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 intel_uncore_write(gt->uncore, GUC_SEND_INTERRUPT, GUC_SEND_TRIGGER);
}
