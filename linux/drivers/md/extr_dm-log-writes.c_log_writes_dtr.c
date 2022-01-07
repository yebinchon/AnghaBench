
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_writes_c {int logdev; int dev; int unflushed_blocks; int logging_blocks; int log_kthread; int pending_blocks; int io_blocks; int wait; int blocks_lock; } ;
struct dm_target {struct log_writes_c* private; } ;


 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int dm_put_device (struct dm_target*,int ) ;
 int kfree (struct log_writes_c*) ;
 int kthread_stop (int ) ;
 int list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int log_mark (struct log_writes_c*,char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event (int ,int) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void log_writes_dtr(struct dm_target *ti)
{
 struct log_writes_c *lc = ti->private;

 spin_lock_irq(&lc->blocks_lock);
 list_splice_init(&lc->unflushed_blocks, &lc->logging_blocks);
 spin_unlock_irq(&lc->blocks_lock);





 log_mark(lc, "dm-log-writes-end");
 wake_up_process(lc->log_kthread);
 wait_event(lc->wait, !atomic_read(&lc->io_blocks) &&
     !atomic_read(&lc->pending_blocks));
 kthread_stop(lc->log_kthread);

 WARN_ON(!list_empty(&lc->logging_blocks));
 WARN_ON(!list_empty(&lc->unflushed_blocks));
 dm_put_device(ti, lc->dev);
 dm_put_device(ti, lc->logdev);
 kfree(lc);
}
