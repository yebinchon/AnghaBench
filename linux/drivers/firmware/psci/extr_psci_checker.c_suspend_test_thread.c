
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sched_param {scalar_t__ sched_priority; } ;
struct cpuidle_state {int target_residency; } ;
struct cpuidle_driver {int state_count; struct cpuidle_state* states; } ;
struct cpuidle_device {int dummy; } ;


 int MAX_RT_PRIO ;
 int NUM_SUSPEND_CYCLE ;
 int SCHED_FIFO ;
 int SCHED_NORMAL ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ atomic_dec_return_relaxed (int *) ;
 int complete (int *) ;
 int cpuidle_devices ;
 struct cpuidle_driver* cpuidle_get_cpu_driver (struct cpuidle_device*) ;
 int current ;
 int del_timer (struct timer_list*) ;
 int destroy_timer_on_stack (struct timer_list*) ;
 int dummy_callback ;
 scalar_t__ jiffies ;
 int kthread_parkme () ;
 scalar_t__ kthread_should_park () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mod_timer (struct timer_list*,scalar_t__) ;
 int nb_active_threads ;
 int pr_err (char*,int,int,int,int) ;
 int pr_info (char*,int,int,...) ;
 int pr_warn (char*,int) ;
 scalar_t__ sched_setscheduler_nocheck (int ,int ,struct sched_param*) ;
 int schedule () ;
 int set_current_state (int ) ;
 int suspend_cpu (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 int suspend_threads_done ;
 int suspend_threads_started ;
 struct cpuidle_device* this_cpu_read (int ) ;
 int timer_setup_on_stack (struct timer_list*,int ,int ) ;
 scalar_t__ usecs_to_jiffies (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int suspend_test_thread(void *arg)
{
 int cpu = (long)arg;
 int i, nb_suspend = 0, nb_shallow_sleep = 0, nb_err = 0;
 struct sched_param sched_priority = { .sched_priority = MAX_RT_PRIO-1 };
 struct cpuidle_device *dev;
 struct cpuidle_driver *drv;

 struct timer_list wakeup_timer;


 wait_for_completion(&suspend_threads_started);


 if (sched_setscheduler_nocheck(current, SCHED_FIFO, &sched_priority))
  pr_warn("Failed to set suspend thread scheduler on CPU %d\n",
   cpu);

 dev = this_cpu_read(cpuidle_devices);
 drv = cpuidle_get_cpu_driver(dev);

 pr_info("CPU %d entering suspend cycles, states 1 through %d\n",
  cpu, drv->state_count - 1);

 timer_setup_on_stack(&wakeup_timer, dummy_callback, 0);
 for (i = 0; i < NUM_SUSPEND_CYCLE; ++i) {
  int index;




  for (index = 1; index < drv->state_count; ++index) {
   int ret;
   struct cpuidle_state *state = &drv->states[index];
   mod_timer(&wakeup_timer, jiffies +
      usecs_to_jiffies(state->target_residency));


   local_irq_disable();

   ret = suspend_cpu(dev, drv, index);






   local_irq_enable();

   if (ret == index) {
    ++nb_suspend;
   } else if (ret >= 0) {

    ++nb_shallow_sleep;
   } else {
    pr_err("Failed to suspend CPU %d: error %d "
           "(requested state %d, cycle %d)\n",
           cpu, ret, index, i);
    ++nb_err;
   }
  }
 }





 del_timer(&wakeup_timer);
 destroy_timer_on_stack(&wakeup_timer);

 if (atomic_dec_return_relaxed(&nb_active_threads) == 0)
  complete(&suspend_threads_done);


 sched_priority.sched_priority = 0;
 if (sched_setscheduler_nocheck(current, SCHED_NORMAL, &sched_priority))
  pr_warn("Failed to set suspend thread scheduler on CPU %d\n",
   cpu);
 for (;;) {

  set_current_state(TASK_INTERRUPTIBLE);
  if (kthread_should_park())
   break;
  schedule();
 }

 pr_info("CPU %d suspend test results: success %d, shallow states %d, errors %d\n",
  cpu, nb_suspend, nb_shallow_sleep, nb_err);

 kthread_parkme();

 return nb_err;
}
