
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {int dummy; } ;
struct intel_guc {int * params; } ;
struct TYPE_2__ {struct intel_uncore* uncore; } ;


 int FORCEWAKE_BLITTER ;
 int GUC_CTL_MAX_DWORDS ;
 int SOFT_SCRATCH (int) ;
 TYPE_1__* guc_to_gt (struct intel_guc*) ;
 int intel_uncore_forcewake_get (struct intel_uncore*,int ) ;
 int intel_uncore_forcewake_put (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

void intel_guc_write_params(struct intel_guc *guc)
{
 struct intel_uncore *uncore = guc_to_gt(guc)->uncore;
 int i;






 intel_uncore_forcewake_get(uncore, FORCEWAKE_BLITTER);

 intel_uncore_write(uncore, SOFT_SCRATCH(0), 0);

 for (i = 0; i < GUC_CTL_MAX_DWORDS; i++)
  intel_uncore_write(uncore, SOFT_SCRATCH(1 + i), guc->params[i]);

 intel_uncore_forcewake_put(uncore, FORCEWAKE_BLITTER);
}
