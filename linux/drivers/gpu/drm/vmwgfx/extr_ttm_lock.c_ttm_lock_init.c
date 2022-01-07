
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {scalar_t__ flags; scalar_t__ rw; int queue; int lock; } ;


 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void ttm_lock_init(struct ttm_lock *lock)
{
 spin_lock_init(&lock->lock);
 init_waitqueue_head(&lock->queue);
 lock->rw = 0;
 lock->flags = 0;
}
