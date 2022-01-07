
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int queue; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int __ttm_read_trylock (struct ttm_lock*,int*) ;
 scalar_t__ unlikely (int) ;
 int wait_event (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

int ttm_read_trylock(struct ttm_lock *lock, bool interruptible)
{
 int ret = 0;
 bool locked;

 if (interruptible)
  ret = wait_event_interruptible
   (lock->queue, __ttm_read_trylock(lock, &locked));
 else
  wait_event(lock->queue, __ttm_read_trylock(lock, &locked));

 if (unlikely(ret != 0)) {
  BUG_ON(locked);
  return ret;
 }

 return (locked) ? 0 : -EBUSY;
}
