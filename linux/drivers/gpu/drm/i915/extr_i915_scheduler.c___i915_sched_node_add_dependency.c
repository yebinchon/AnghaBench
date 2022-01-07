
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_node {int flags; int signalers_list; int waiters_list; } ;
struct i915_dependency {unsigned long flags; struct i915_sched_node* waiter; struct i915_sched_node* signaler; int signal_link; int wait_link; int dfs_link; } ;


 int BUILD_BUG_ON (int) ;
 unsigned long I915_DEPENDENCY_EXTERNAL ;
 int I915_PRIORITY_MASK ;
 int I915_SCHED_HAS_SEMAPHORE_CHAIN ;
 int INIT_LIST_HEAD (int *) ;
 int __NO_PREEMPTION ;
 int __bump_priority (struct i915_sched_node*,int) ;
 int list_add (int *,int *) ;
 int node_signaled (struct i915_sched_node*) ;
 int node_started (struct i915_sched_node*) ;
 int schedule_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
          struct i915_sched_node *signal,
          struct i915_dependency *dep,
          unsigned long flags)
{
 bool ret = 0;

 spin_lock_irq(&schedule_lock);

 if (!node_signaled(signal)) {
  INIT_LIST_HEAD(&dep->dfs_link);
  list_add(&dep->wait_link, &signal->waiters_list);
  list_add(&dep->signal_link, &node->signalers_list);
  dep->signaler = signal;
  dep->waiter = node;
  dep->flags = flags;


  if (signal->flags & I915_SCHED_HAS_SEMAPHORE_CHAIN &&
      !node_started(signal))
   node->flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;







  BUILD_BUG_ON(__NO_PREEMPTION & ~I915_PRIORITY_MASK);
  if (flags & I915_DEPENDENCY_EXTERNAL)
   __bump_priority(signal, __NO_PREEMPTION);

  ret = 1;
 }

 spin_unlock_irq(&schedule_lock);

 return ret;
}
