
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {scalar_t__ barrier; int resync_lock; int nr_pending; int wait_barrier; int nr_waiting; } ;


 int BUG_ON (int) ;
 scalar_t__ RESYNC_DEPTH ;
 int atomic_read (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int,int ) ;

__attribute__((used)) static void raise_barrier(struct r10conf *conf, int force)
{
 BUG_ON(force && !conf->barrier);
 spin_lock_irq(&conf->resync_lock);


 wait_event_lock_irq(conf->wait_barrier, force || !conf->nr_waiting,
       conf->resync_lock);


 conf->barrier++;


 wait_event_lock_irq(conf->wait_barrier,
       !atomic_read(&conf->nr_pending) && conf->barrier < RESYNC_DEPTH,
       conf->resync_lock);

 spin_unlock_irq(&conf->resync_lock);
}
