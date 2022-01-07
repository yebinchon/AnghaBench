
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_state {int flags; int (* enter ) (struct cpuidle_device*,struct cpuidle_driver*,int) ;} ;
struct cpuidle_driver {struct cpuidle_state* states; } ;
struct cpuidle_device {int dummy; } ;


 int CPUIDLE_FLAG_TIMER_STOP ;
 int arch_cpu_idle_enter () ;
 int arch_cpu_idle_exit () ;
 int cpu_do_idle () ;
 int stub1 (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 int tick_broadcast_enter () ;
 int tick_broadcast_exit () ;

__attribute__((used)) static int suspend_cpu(struct cpuidle_device *dev,
         struct cpuidle_driver *drv, int index)
{
 struct cpuidle_state *state = &drv->states[index];
 bool broadcast = state->flags & CPUIDLE_FLAG_TIMER_STOP;
 int ret;

 arch_cpu_idle_enter();

 if (broadcast) {




  ret = tick_broadcast_enter();
  if (ret) {







   cpu_do_idle();
   ret = 0;
   goto out_arch_exit;
  }
 }

 ret = state->enter(dev, drv, index);

 if (broadcast)
  tick_broadcast_exit();

out_arch_exit:
 arch_cpu_idle_exit();

 return ret;
}
