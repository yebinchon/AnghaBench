
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {int resync_lock; int nr_sync_pending; int wait_barrier; int * barrier; TYPE_1__* mddev; int * nr_pending; int array_frozen; int * nr_waiting; } ;
typedef int sector_t ;
struct TYPE_2__ {int recovery; } ;


 int EINTR ;
 int MD_RECOVERY_INTR ;
 scalar_t__ RESYNC_DEPTH ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int sector_to_idx (int ) ;
 int smp_mb__after_atomic () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_lock_irq (int ,int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int raise_barrier(struct r1conf *conf, sector_t sector_nr)
{
 int idx = sector_to_idx(sector_nr);

 spin_lock_irq(&conf->resync_lock);


 wait_event_lock_irq(conf->wait_barrier,
       !atomic_read(&conf->nr_waiting[idx]),
       conf->resync_lock);


 atomic_inc(&conf->barrier[idx]);
 smp_mb__after_atomic();
 wait_event_lock_irq(conf->wait_barrier,
       (!conf->array_frozen &&
        !atomic_read(&conf->nr_pending[idx]) &&
        atomic_read(&conf->barrier[idx]) < RESYNC_DEPTH) ||
    test_bit(MD_RECOVERY_INTR, &conf->mddev->recovery),
       conf->resync_lock);

 if (test_bit(MD_RECOVERY_INTR, &conf->mddev->recovery)) {
  atomic_dec(&conf->barrier[idx]);
  spin_unlock_irq(&conf->resync_lock);
  wake_up(&conf->wait_barrier);
  return -EINTR;
 }

 atomic_inc(&conf->nr_sync_pending);
 spin_unlock_irq(&conf->resync_lock);

 return 0;
}
