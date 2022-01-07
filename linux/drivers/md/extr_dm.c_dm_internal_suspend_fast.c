
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int wq; int io_barrier; int flags; int suspend_lock; } ;


 int DMF_BLOCK_IO_FOR_SUSPEND ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ dm_suspended_internally_md (struct mapped_device*) ;
 scalar_t__ dm_suspended_md (struct mapped_device*) ;
 int dm_wait_for_completion (struct mapped_device*,int ) ;
 int flush_workqueue (int ) ;
 int mutex_lock (int *) ;
 int set_bit (int ,int *) ;
 int synchronize_srcu (int *) ;

void dm_internal_suspend_fast(struct mapped_device *md)
{
 mutex_lock(&md->suspend_lock);
 if (dm_suspended_md(md) || dm_suspended_internally_md(md))
  return;

 set_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
 synchronize_srcu(&md->io_barrier);
 flush_workqueue(md->wq);
 dm_wait_for_completion(md, TASK_UNINTERRUPTIBLE);
}
