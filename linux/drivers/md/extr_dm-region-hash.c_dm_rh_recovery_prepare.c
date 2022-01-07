
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int context; int (* wakeup_all_recovery_waiters ) (int ) ;int recovery_in_flight; int recovery_count; } ;


 scalar_t__ __rh_recovery_prepare (struct dm_region_hash*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int down_trylock (int *) ;
 int stub1 (int ) ;
 int up (int *) ;

void dm_rh_recovery_prepare(struct dm_region_hash *rh)
{

 atomic_inc(&rh->recovery_in_flight);

 while (!down_trylock(&rh->recovery_count)) {
  atomic_inc(&rh->recovery_in_flight);
  if (__rh_recovery_prepare(rh) <= 0) {
   atomic_dec(&rh->recovery_in_flight);
   up(&rh->recovery_count);
   break;
  }
 }


 if (atomic_dec_and_test(&rh->recovery_in_flight))
  rh->wakeup_all_recovery_waiters(rh->context);
}
