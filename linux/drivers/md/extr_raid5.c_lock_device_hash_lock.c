
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int device_lock; scalar_t__ hash_locks; } ;


 int spin_lock (int *) ;
 int spin_lock_irq (scalar_t__) ;

__attribute__((used)) static inline void lock_device_hash_lock(struct r5conf *conf, int hash)
{
 spin_lock_irq(conf->hash_locks + hash);
 spin_lock(&conf->device_lock);
}
