
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;


 int EEXIST ;
 int HWSPINLOCK_UNUSED ;
 int WARN_ON (int) ;
 int hwspinlock_tree ;
 int hwspinlock_tree_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int radix_tree_insert (int *,int,struct hwspinlock*) ;
 struct hwspinlock* radix_tree_tag_set (int *,int,int ) ;

__attribute__((used)) static int hwspin_lock_register_single(struct hwspinlock *hwlock, int id)
{
 struct hwspinlock *tmp;
 int ret;

 mutex_lock(&hwspinlock_tree_lock);

 ret = radix_tree_insert(&hwspinlock_tree, id, hwlock);
 if (ret) {
  if (ret == -EEXIST)
   pr_err("hwspinlock id %d already exists!\n", id);
  goto out;
 }


 tmp = radix_tree_tag_set(&hwspinlock_tree, id, HWSPINLOCK_UNUSED);


 WARN_ON(tmp != hwlock);

out:
 mutex_unlock(&hwspinlock_tree_lock);
 return 0;
}
