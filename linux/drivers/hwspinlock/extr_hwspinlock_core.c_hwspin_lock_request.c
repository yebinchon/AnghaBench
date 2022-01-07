
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;


 int HWSPINLOCK_UNUSED ;
 int WARN_ON (int) ;
 int __hwspin_lock_request (struct hwspinlock*) ;
 int hwspinlock_tree ;
 int hwspinlock_tree_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;
 int radix_tree_gang_lookup_tag (int *,void**,int ,int,int ) ;

struct hwspinlock *hwspin_lock_request(void)
{
 struct hwspinlock *hwlock;
 int ret;

 mutex_lock(&hwspinlock_tree_lock);


 ret = radix_tree_gang_lookup_tag(&hwspinlock_tree, (void **)&hwlock,
      0, 1, HWSPINLOCK_UNUSED);
 if (ret == 0) {
  pr_warn("a free hwspinlock is not available\n");
  hwlock = ((void*)0);
  goto out;
 }


 WARN_ON(ret > 1);


 ret = __hwspin_lock_request(hwlock);
 if (ret < 0)
  hwlock = ((void*)0);

out:
 mutex_unlock(&hwspinlock_tree_lock);
 return hwlock;
}
