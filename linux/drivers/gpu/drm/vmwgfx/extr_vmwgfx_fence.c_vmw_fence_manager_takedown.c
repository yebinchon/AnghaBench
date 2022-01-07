
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fence_manager {int lock; int cleanup_list; int fence_list; int work; } ;


 int BUG_ON (int) ;
 int cancel_work_sync (int *) ;
 int kfree (struct vmw_fence_manager*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void vmw_fence_manager_takedown(struct vmw_fence_manager *fman)
{
 bool lists_empty;

 (void) cancel_work_sync(&fman->work);

 spin_lock(&fman->lock);
 lists_empty = list_empty(&fman->fence_list) &&
  list_empty(&fman->cleanup_list);
 spin_unlock(&fman->lock);

 BUG_ON(!lists_empty);
 kfree(fman);
}
