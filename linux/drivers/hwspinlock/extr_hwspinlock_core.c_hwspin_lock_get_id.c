
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;


 int EINVAL ;
 int hwlock_to_id (struct hwspinlock*) ;
 int pr_err (char*) ;

int hwspin_lock_get_id(struct hwspinlock *hwlock)
{
 if (!hwlock) {
  pr_err("invalid hwlock\n");
  return -EINVAL;
 }

 return hwlock_to_id(hwlock);
}
