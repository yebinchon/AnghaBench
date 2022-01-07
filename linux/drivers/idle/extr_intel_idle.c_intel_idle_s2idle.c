
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {TYPE_1__* states; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 unsigned long flg2MWAIT (int ) ;
 int mwait_idle_with_hints (unsigned long,unsigned long) ;

__attribute__((used)) static void intel_idle_s2idle(struct cpuidle_device *dev,
        struct cpuidle_driver *drv, int index)
{
 unsigned long ecx = 1;
 unsigned long eax = flg2MWAIT(drv->states[index].flags);

 mwait_idle_with_hints(eax, ecx);
}
