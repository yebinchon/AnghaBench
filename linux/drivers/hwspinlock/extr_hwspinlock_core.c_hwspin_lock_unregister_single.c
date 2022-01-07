
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;


 int HWSPINLOCK_UNUSED ;
 int hwspinlock_tree ;
 int hwspinlock_tree_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,unsigned int) ;
 struct hwspinlock* radix_tree_delete (int *,unsigned int) ;
 int radix_tree_tag_get (int *,unsigned int,int ) ;

__attribute__((used)) static struct hwspinlock *hwspin_lock_unregister_single(unsigned int id)
{
 struct hwspinlock *hwlock = ((void*)0);
 int ret;

 mutex_lock(&hwspinlock_tree_lock);


 ret = radix_tree_tag_get(&hwspinlock_tree, id, HWSPINLOCK_UNUSED);
 if (ret == 0) {
  pr_err("hwspinlock %d still in use (or not present)\n", id);
  goto out;
 }

 hwlock = radix_tree_delete(&hwspinlock_tree, id);
 if (!hwlock) {
  pr_err("failed to delete hwspinlock %d\n", id);
  goto out;
 }

out:
 mutex_unlock(&hwspinlock_tree_lock);
 return hwlock;
}
