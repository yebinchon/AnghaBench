
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int device_lock; int hash_locks; } ;


 int NR_STRIPE_HASH_LOCKS ;
 int spin_lock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_lock_nest_lock (int ,int ) ;

__attribute__((used)) static inline void lock_all_device_hash_locks_irq(struct r5conf *conf)
{
 int i;
 spin_lock_irq(conf->hash_locks);
 for (i = 1; i < NR_STRIPE_HASH_LOCKS; i++)
  spin_lock_nest_lock(conf->hash_locks + i, conf->hash_locks);
 spin_lock(&conf->device_lock);
}
