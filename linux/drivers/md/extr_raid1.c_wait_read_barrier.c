
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int resync_lock; int * nr_waiting; int * nr_pending; int array_frozen; int wait_barrier; } ;
typedef int sector_t ;


 int READ_ONCE (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int sector_to_idx (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void wait_read_barrier(struct r1conf *conf, sector_t sector_nr)
{
 int idx = sector_to_idx(sector_nr);
 atomic_inc(&conf->nr_pending[idx]);

 if (!READ_ONCE(conf->array_frozen))
  return;

 spin_lock_irq(&conf->resync_lock);
 atomic_inc(&conf->nr_waiting[idx]);
 atomic_dec(&conf->nr_pending[idx]);




 wake_up(&conf->wait_barrier);

 wait_event_lock_irq(conf->wait_barrier,
       !conf->array_frozen,
       conf->resync_lock);
 atomic_inc(&conf->nr_pending[idx]);
 atomic_dec(&conf->nr_waiting[idx]);
 spin_unlock_irq(&conf->resync_lock);
}
