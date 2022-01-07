
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct vmw_fence_obj {struct list_head seq_passed_actions; int base; } ;
struct vmw_fence_manager {int goal_irq_on; int goal_irq_mutex; int dev_priv; int lock; int * pending_actions; } ;
struct vmw_fence_action {size_t type; int head; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ dma_fence_is_signaled_locked (int *) ;
 struct vmw_fence_manager* fman_from_fence (struct vmw_fence_obj*) ;
 int list_add_tail (int *,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmw_fence_goal_check_locked (struct vmw_fence_obj*) ;
 int vmw_fences_perform_actions (struct vmw_fence_manager*,struct list_head*) ;
 int vmw_fences_update (struct vmw_fence_manager*) ;
 int vmw_goal_waiter_add (int ) ;

__attribute__((used)) static void vmw_fence_obj_add_action(struct vmw_fence_obj *fence,
         struct vmw_fence_action *action)
{
 struct vmw_fence_manager *fman = fman_from_fence(fence);
 bool run_update = 0;

 mutex_lock(&fman->goal_irq_mutex);
 spin_lock(&fman->lock);

 fman->pending_actions[action->type]++;
 if (dma_fence_is_signaled_locked(&fence->base)) {
  struct list_head action_list;

  INIT_LIST_HEAD(&action_list);
  list_add_tail(&action->head, &action_list);
  vmw_fences_perform_actions(fman, &action_list);
 } else {
  list_add_tail(&action->head, &fence->seq_passed_actions);





  run_update = vmw_fence_goal_check_locked(fence);
 }

 spin_unlock(&fman->lock);

 if (run_update) {
  if (!fman->goal_irq_on) {
   fman->goal_irq_on = 1;
   vmw_goal_waiter_add(fman->dev_priv);
  }
  vmw_fences_update(fman);
 }
 mutex_unlock(&fman->goal_irq_mutex);

}
