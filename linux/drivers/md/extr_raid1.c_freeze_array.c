
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int array_frozen; int resync_lock; int wait_barrier; int mddev; } ;


 int flush_pending_writes (struct r1conf*) ;
 int get_unqueued_pending (struct r1conf*) ;
 int raid1_log (int ,char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq_cmd (int ,int,int ,int ) ;

__attribute__((used)) static void freeze_array(struct r1conf *conf, int extra)
{
 spin_lock_irq(&conf->resync_lock);
 conf->array_frozen = 1;
 raid1_log(conf->mddev, "wait freeze");
 wait_event_lock_irq_cmd(
  conf->wait_barrier,
  get_unqueued_pending(conf) == extra,
  conf->resync_lock,
  flush_pending_writes(conf));
 spin_unlock_irq(&conf->resync_lock);
}
