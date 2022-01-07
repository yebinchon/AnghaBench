
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock_device {int num_locks; scalar_t__ base_id; struct hwspinlock* lock; } ;
struct hwspinlock {int dummy; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 struct hwspinlock* hwspin_lock_unregister_single (scalar_t__) ;

int hwspin_lock_unregister(struct hwspinlock_device *bank)
{
 struct hwspinlock *hwlock, *tmp;
 int i;

 for (i = 0; i < bank->num_locks; i++) {
  hwlock = &bank->lock[i];

  tmp = hwspin_lock_unregister_single(bank->base_id + i);
  if (!tmp)
   return -EBUSY;


  WARN_ON(tmp != hwlock);
 }

 return 0;
}
