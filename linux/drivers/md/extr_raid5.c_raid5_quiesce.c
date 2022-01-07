
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int quiesce; int wait_for_overlap; int wait_for_quiescent; int active_aligned_reads; int active_stripes; } ;
struct mddev {struct r5conf* private; } ;


 int INT_MAX ;
 scalar_t__ atomic_read (int *) ;
 int lock_all_device_hash_locks_irq (struct r5conf*) ;
 int log_quiesce (struct r5conf*,int) ;
 int r5c_flush_cache (struct r5conf*,int ) ;
 int unlock_all_device_hash_locks_irq (struct r5conf*) ;
 int wait_event_cmd (int ,int,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void raid5_quiesce(struct mddev *mddev, int quiesce)
{
 struct r5conf *conf = mddev->private;

 if (quiesce) {

  lock_all_device_hash_locks_irq(conf);



  r5c_flush_cache(conf, INT_MAX);
  conf->quiesce = 2;
  wait_event_cmd(conf->wait_for_quiescent,
        atomic_read(&conf->active_stripes) == 0 &&
        atomic_read(&conf->active_aligned_reads) == 0,
        unlock_all_device_hash_locks_irq(conf),
        lock_all_device_hash_locks_irq(conf));
  conf->quiesce = 1;
  unlock_all_device_hash_locks_irq(conf);

  wake_up(&conf->wait_for_overlap);
 } else {

  lock_all_device_hash_locks_irq(conf);
  conf->quiesce = 0;
  wake_up(&conf->wait_for_quiescent);
  wake_up(&conf->wait_for_overlap);
  unlock_all_device_hash_locks_irq(conf);
 }
 log_quiesce(conf, quiesce);
}
