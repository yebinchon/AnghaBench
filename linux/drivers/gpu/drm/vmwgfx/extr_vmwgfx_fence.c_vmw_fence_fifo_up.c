
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fence_manager {int fifo_down; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void vmw_fence_fifo_up(struct vmw_fence_manager *fman)
{
 spin_lock(&fman->lock);
 fman->fifo_down = 0;
 spin_unlock(&fman->lock);
}
