
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {scalar_t__ nr_queued; int resync_lock; int array_freeze_pending; int nr_pending; int wait_barrier; int nr_waiting; int barrier; } ;


 scalar_t__ atomic_read (int *) ;
 int flush_pending_writes (struct r10conf*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq_cmd (int ,int,int ,int ) ;

__attribute__((used)) static void freeze_array(struct r10conf *conf, int extra)
{
 spin_lock_irq(&conf->resync_lock);
 conf->array_freeze_pending++;
 conf->barrier++;
 conf->nr_waiting++;
 wait_event_lock_irq_cmd(conf->wait_barrier,
    atomic_read(&conf->nr_pending) == conf->nr_queued+extra,
    conf->resync_lock,
    flush_pending_writes(conf));

 conf->array_freeze_pending--;
 spin_unlock_irq(&conf->resync_lock);
}
