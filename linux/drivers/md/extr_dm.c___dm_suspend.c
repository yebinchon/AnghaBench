
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int queue; int io_barrier; int flags; int wq; int suspend_lock; } ;
struct dm_table {int dummy; } ;


 int DMF_BLOCK_IO_FOR_SUSPEND ;
 int DMF_NOFLUSH_SUSPENDING ;
 unsigned int DM_SUSPEND_LOCKFS_FLAG ;
 unsigned int DM_SUSPEND_NOFLUSH_FLAG ;
 int clear_bit (int,int *) ;
 int dm_device_name (struct mapped_device*) ;
 int dm_queue_flush (struct mapped_device*) ;
 scalar_t__ dm_request_based (struct mapped_device*) ;
 int dm_start_queue (int ) ;
 int dm_stop_queue (int ) ;
 int dm_table_presuspend_targets (struct dm_table*) ;
 int dm_table_presuspend_undo_targets (struct dm_table*) ;
 int dm_wait_for_completion (struct mapped_device*,long) ;
 int flush_workqueue (int ) ;
 int lock_fs (struct mapped_device*) ;
 int lockdep_assert_held (int *) ;
 int pr_debug (char*,int ) ;
 int set_bit (int,int *) ;
 int synchronize_srcu (int *) ;
 int unlock_fs (struct mapped_device*) ;

__attribute__((used)) static int __dm_suspend(struct mapped_device *md, struct dm_table *map,
   unsigned suspend_flags, long task_state,
   int dmf_suspended_flag)
{
 bool do_lockfs = suspend_flags & DM_SUSPEND_LOCKFS_FLAG;
 bool noflush = suspend_flags & DM_SUSPEND_NOFLUSH_FLAG;
 int r;

 lockdep_assert_held(&md->suspend_lock);





 if (noflush)
  set_bit(DMF_NOFLUSH_SUSPENDING, &md->flags);
 else
  pr_debug("%s: suspending with flush\n", dm_device_name(md));





 dm_table_presuspend_targets(map);







 if (!noflush && do_lockfs) {
  r = lock_fs(md);
  if (r) {
   dm_table_presuspend_undo_targets(map);
   return r;
  }
 }
 set_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
 if (map)
  synchronize_srcu(&md->io_barrier);





 if (dm_request_based(md))
  dm_stop_queue(md->queue);

 flush_workqueue(md->wq);






 r = dm_wait_for_completion(md, task_state);
 if (!r)
  set_bit(dmf_suspended_flag, &md->flags);

 if (noflush)
  clear_bit(DMF_NOFLUSH_SUSPENDING, &md->flags);
 if (map)
  synchronize_srcu(&md->io_barrier);


 if (r < 0) {
  dm_queue_flush(md);

  if (dm_request_based(md))
   dm_start_queue(md->queue);

  unlock_fs(md);
  dm_table_presuspend_undo_targets(map);

 }

 return r;
}
