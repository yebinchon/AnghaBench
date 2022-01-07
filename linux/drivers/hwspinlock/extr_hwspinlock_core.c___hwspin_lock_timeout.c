
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwspinlock {TYPE_2__* bank; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* relax ) (struct hwspinlock*) ;} ;


 int EBUSY ;
 int ETIMEDOUT ;
 int HWLOCK_IN_ATOMIC ;
 scalar_t__ HWSPINLOCK_RETRY_DELAY_US ;
 int __hwspin_trylock (struct hwspinlock*,int,unsigned long*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int stub1 (struct hwspinlock*) ;
 scalar_t__ time_is_before_eq_jiffies (unsigned long) ;
 int udelay (scalar_t__) ;

int __hwspin_lock_timeout(struct hwspinlock *hwlock, unsigned int to,
     int mode, unsigned long *flags)
{
 int ret;
 unsigned long expire, atomic_delay = 0;

 expire = msecs_to_jiffies(to) + jiffies;

 for (;;) {

  ret = __hwspin_trylock(hwlock, mode, flags);
  if (ret != -EBUSY)
   break;





  if (mode == HWLOCK_IN_ATOMIC) {
   udelay(HWSPINLOCK_RETRY_DELAY_US);
   atomic_delay += HWSPINLOCK_RETRY_DELAY_US;
   if (atomic_delay > to * 1000)
    return -ETIMEDOUT;
  } else {
   if (time_is_before_eq_jiffies(expire))
    return -ETIMEDOUT;
  }





  if (hwlock->bank->ops->relax)
   hwlock->bank->ops->relax(hwlock);
 }

 return ret;
}
