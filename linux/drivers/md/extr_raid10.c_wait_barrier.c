
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {int resync_lock; int nr_pending; int wait_barrier; int nr_waiting; scalar_t__ barrier; int mddev; } ;
struct TYPE_2__ {int * bio_list; } ;


 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int bio_list_empty (int *) ;
 TYPE_1__* current ;
 int raid10_log (int ,char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void wait_barrier(struct r10conf *conf)
{
 spin_lock_irq(&conf->resync_lock);
 if (conf->barrier) {
  conf->nr_waiting++;
  raid10_log(conf->mddev, "wait barrier");
  wait_event_lock_irq(conf->wait_barrier,
        !conf->barrier ||
        (atomic_read(&conf->nr_pending) &&
         current->bio_list &&
         (!bio_list_empty(&current->bio_list[0]) ||
          !bio_list_empty(&current->bio_list[1]))),
        conf->resync_lock);
  conf->nr_waiting--;
  if (!conf->nr_waiting)
   wake_up(&conf->wait_barrier);
 }
 atomic_inc(&conf->nr_pending);
 spin_unlock_irq(&conf->resync_lock);
}
