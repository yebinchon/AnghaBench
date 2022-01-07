
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {unsigned long nr_regions; unsigned long hydration_offset; int hydrations_in_flight; int hydration_threshold; int flags; int ios_in_flight; int cmd; } ;
struct batch_info {scalar_t__ nr_batched_regions; int * head; } ;


 scalar_t__ CM_READ_ONLY ;
 int DM_CLONE_HYDRATION_ENABLED ;
 int DM_CLONE_HYDRATION_SUSPENDED ;
 unsigned int READ_ONCE (int ) ;
 unsigned long __start_next_hydration (struct clone*,unsigned long,struct batch_info*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 unsigned int atomic_read (int *) ;
 scalar_t__ dm_clone_is_hydration_done (int ) ;
 scalar_t__ get_clone_mode (struct clone*) ;
 int hydration_copy (int *,scalar_t__) ;
 scalar_t__ likely (int) ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wakeup_hydration_waiters (struct clone*) ;

__attribute__((used)) static void do_hydration(struct clone *clone)
{
 unsigned int current_volume;
 unsigned long offset, nr_regions = clone->nr_regions;

 struct batch_info batch = {
  .head = ((void*)0),
  .nr_batched_regions = 0,
 };

 if (unlikely(get_clone_mode(clone) >= CM_READ_ONLY))
  return;

 if (dm_clone_is_hydration_done(clone->cmd))
  return;




 atomic_inc(&clone->hydrations_in_flight);
 smp_mb__after_atomic();

 offset = clone->hydration_offset;
 while (likely(!test_bit(DM_CLONE_HYDRATION_SUSPENDED, &clone->flags)) &&
        !atomic_read(&clone->ios_in_flight) &&
        test_bit(DM_CLONE_HYDRATION_ENABLED, &clone->flags) &&
        offset < nr_regions) {
  current_volume = atomic_read(&clone->hydrations_in_flight);
  current_volume += batch.nr_batched_regions;

  if (current_volume > READ_ONCE(clone->hydration_threshold))
   break;

  offset = __start_next_hydration(clone, offset, &batch);
 }

 if (batch.head)
  hydration_copy(batch.head, batch.nr_batched_regions);

 if (offset >= nr_regions)
  offset = 0;

 clone->hydration_offset = offset;

 if (atomic_dec_and_test(&clone->hydrations_in_flight))
  wakeup_hydration_waiters(clone);
}
