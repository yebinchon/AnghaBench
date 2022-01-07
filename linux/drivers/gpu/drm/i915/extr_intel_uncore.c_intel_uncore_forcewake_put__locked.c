
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int force_wake_put; } ;
struct intel_uncore {TYPE_1__ funcs; int lock; } ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;


 int __intel_uncore_forcewake_put (struct intel_uncore*,int) ;
 int lockdep_assert_held (int *) ;

void intel_uncore_forcewake_put__locked(struct intel_uncore *uncore,
     enum forcewake_domains fw_domains)
{
 lockdep_assert_held(&uncore->lock);

 if (!uncore->funcs.force_wake_put)
  return;

 __intel_uncore_forcewake_put(uncore, fw_domains);
}
