
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int queue; int lock; int flags; } ;


 int TTM_WRITE_LOCK_PENDING ;
 int __ttm_write_lock (struct ttm_lock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wait_event (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;
 int wake_up_all (int *) ;

int ttm_write_lock(struct ttm_lock *lock, bool interruptible)
{
 int ret = 0;

 if (interruptible) {
  ret = wait_event_interruptible(lock->queue,
            __ttm_write_lock(lock));
  if (unlikely(ret != 0)) {
   spin_lock(&lock->lock);
   lock->flags &= ~TTM_WRITE_LOCK_PENDING;
   wake_up_all(&lock->queue);
   spin_unlock(&lock->lock);
  }
 } else
  wait_event(lock->queue, __ttm_write_lock(lock));

 return ret;
}
