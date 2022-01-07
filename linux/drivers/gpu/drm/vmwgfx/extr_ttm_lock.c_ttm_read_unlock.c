
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {scalar_t__ rw; int lock; int queue; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

void ttm_read_unlock(struct ttm_lock *lock)
{
 spin_lock(&lock->lock);
 if (--lock->rw == 0)
  wake_up_all(&lock->queue);
 spin_unlock(&lock->lock);
}
