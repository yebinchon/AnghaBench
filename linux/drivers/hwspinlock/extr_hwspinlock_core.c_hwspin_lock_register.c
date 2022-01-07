
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock_ops {int unlock; int trylock; } ;
struct hwspinlock_device {int base_id; int num_locks; struct hwspinlock* lock; struct hwspinlock_ops const* ops; struct device* dev; } ;
struct hwspinlock {struct hwspinlock_device* bank; int lock; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int hwspin_lock_register_single (struct hwspinlock*,int) ;
 int hwspin_lock_unregister_single (int) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;

int hwspin_lock_register(struct hwspinlock_device *bank, struct device *dev,
  const struct hwspinlock_ops *ops, int base_id, int num_locks)
{
 struct hwspinlock *hwlock;
 int ret = 0, i;

 if (!bank || !ops || !dev || !num_locks || !ops->trylock ||
       !ops->unlock) {
  pr_err("invalid parameters\n");
  return -EINVAL;
 }

 bank->dev = dev;
 bank->ops = ops;
 bank->base_id = base_id;
 bank->num_locks = num_locks;

 for (i = 0; i < num_locks; i++) {
  hwlock = &bank->lock[i];

  spin_lock_init(&hwlock->lock);
  hwlock->bank = bank;

  ret = hwspin_lock_register_single(hwlock, base_id + i);
  if (ret)
   goto reg_failed;
 }

 return 0;

reg_failed:
 while (--i >= 0)
  hwspin_lock_unregister_single(base_id + i);
 return ret;
}
