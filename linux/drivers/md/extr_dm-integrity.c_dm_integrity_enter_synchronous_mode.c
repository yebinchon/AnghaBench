
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {char mode; int synchronous_mode; int commit_wq; int bitmap_flush_work; scalar_t__ bitmap_flush_interval; } ;


 int DEBUG_print (char*) ;
 int cancel_delayed_work_sync (int *) ;
 int flush_workqueue (int ) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void dm_integrity_enter_synchronous_mode(struct dm_integrity_c *ic)
{
 DEBUG_print("dm_integrity_enter_synchronous_mode\n");

 if (ic->mode == 'B') {
  ic->bitmap_flush_interval = msecs_to_jiffies(10) + 1;
  ic->synchronous_mode = 1;

  cancel_delayed_work_sync(&ic->bitmap_flush_work);
  queue_delayed_work(ic->commit_wq, &ic->bitmap_flush_work, 0);
  flush_workqueue(ic->commit_wq);
 }
}
