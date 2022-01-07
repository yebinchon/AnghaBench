
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct intel_gt {TYPE_1__ hangcheck; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int hangcheck_elapsed ;

void intel_gt_init_hangcheck(struct intel_gt *gt)
{
 INIT_DELAYED_WORK(&gt->hangcheck.work, hangcheck_elapsed);
}
