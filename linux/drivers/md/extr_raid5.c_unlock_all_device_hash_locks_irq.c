
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int * hash_locks; int device_lock; } ;


 int NR_STRIPE_HASH_LOCKS ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void unlock_all_device_hash_locks_irq(struct r5conf *conf)
{
 int i;
 spin_unlock(&conf->device_lock);
 for (i = NR_STRIPE_HASH_LOCKS - 1; i; i--)
  spin_unlock(conf->hash_locks + i);
 spin_unlock_irq(conf->hash_locks);
}
