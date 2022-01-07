
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {scalar_t__ hash_locks; int device_lock; } ;


 int spin_unlock (int *) ;
 int spin_unlock_irq (scalar_t__) ;

__attribute__((used)) static inline void unlock_device_hash_lock(struct r5conf *conf, int hash)
{
 spin_unlock(&conf->device_lock);
 spin_unlock_irq(conf->hash_locks + hash);
}
