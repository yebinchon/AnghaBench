
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {struct log_c* usr_argv_str; int flush_entry_pool; scalar_t__ log_dev; int ti; int luid; int uuid; int dmlog_wq; int flush_log_work; int sched_flush; scalar_t__ integrated_flush; } ;
struct dm_dirty_log {struct log_c* context; } ;


 int DM_ULOG_DTR ;
 scalar_t__ atomic_read (int *) ;
 int destroy_workqueue (int ) ;
 int dm_consult_userspace (int ,int ,int ,int *,int ,int *,int *) ;
 int dm_put_device (int ,scalar_t__) ;
 int flush_delayed_work (int *) ;
 int kfree (struct log_c*) ;
 int mempool_exit (int *) ;

__attribute__((used)) static void userspace_dtr(struct dm_dirty_log *log)
{
 struct log_c *lc = log->context;

 if (lc->integrated_flush) {

  if (atomic_read(&lc->sched_flush))
   flush_delayed_work(&lc->flush_log_work);

  destroy_workqueue(lc->dmlog_wq);
 }

 (void) dm_consult_userspace(lc->uuid, lc->luid, DM_ULOG_DTR,
        ((void*)0), 0, ((void*)0), ((void*)0));

 if (lc->log_dev)
  dm_put_device(lc->ti, lc->log_dev);

 mempool_exit(&lc->flush_entry_pool);

 kfree(lc->usr_argv_str);
 kfree(lc);

 return;
}
