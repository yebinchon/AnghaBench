
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;


 int HWSPINLOCK_UNUSED ;
 int WARN_ON (int) ;
 int __hwspin_lock_request (struct hwspinlock*) ;
 unsigned int hwlock_to_id (struct hwspinlock*) ;
 int hwspinlock_tree ;
 int hwspinlock_tree_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,unsigned int) ;
 struct hwspinlock* radix_tree_lookup (int *,unsigned int) ;
 int radix_tree_tag_get (int *,unsigned int,int ) ;

struct hwspinlock *hwspin_lock_request_specific(unsigned int id)
{
 struct hwspinlock *hwlock;
 int ret;

 mutex_lock(&hwspinlock_tree_lock);


 hwlock = radix_tree_lookup(&hwspinlock_tree, id);
 if (!hwlock) {
  pr_warn("hwspinlock %u does not exist\n", id);
  goto out;
 }


 WARN_ON(hwlock_to_id(hwlock) != id);


 ret = radix_tree_tag_get(&hwspinlock_tree, id, HWSPINLOCK_UNUSED);
 if (ret == 0) {
  pr_warn("hwspinlock %u is already in use\n", id);
  hwlock = ((void*)0);
  goto out;
 }


 ret = __hwspin_lock_request(hwlock);
 if (ret < 0)
  hwlock = ((void*)0);

out:
 mutex_unlock(&hwspinlock_tree_lock);
 return hwlock;
}
