
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int force_wake_put; } ;
struct intel_uncore {int lock; TYPE_1__ funcs; } ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;


 int __intel_uncore_forcewake_put (struct intel_uncore*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void intel_uncore_forcewake_put(struct intel_uncore *uncore,
    enum forcewake_domains fw_domains)
{
 unsigned long irqflags;

 if (!uncore->funcs.force_wake_put)
  return;

 spin_lock_irqsave(&uncore->lock, irqflags);
 __intel_uncore_forcewake_put(uncore, fw_domains);
 spin_unlock_irqrestore(&uncore->lock, irqflags);
}
