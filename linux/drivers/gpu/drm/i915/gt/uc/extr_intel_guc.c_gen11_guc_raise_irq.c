
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;
struct intel_gt {int uncore; } ;


 int GEN11_GUC_HOST_INTERRUPT ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int intel_uncore_write (int ,int ,int ) ;

__attribute__((used)) static void gen11_guc_raise_irq(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 intel_uncore_write(gt->uncore, GEN11_GUC_HOST_INTERRUPT, 0);
}
