
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {scalar_t__ writer_ts; int wtimer; int rwb; } ;


 int WARN (int ,char*) ;
 int del_timer_sync (int *) ;
 int kthread_stop (scalar_t__) ;
 int pblk_rb_read_count (int *) ;
 int pblk_rb_sync_count (int *) ;

__attribute__((used)) static void pblk_writer_stop(struct pblk *pblk)
{



 WARN(pblk_rb_read_count(&pblk->rwb),
   "Stopping not fully persisted write buffer\n");

 WARN(pblk_rb_sync_count(&pblk->rwb),
   "Stopping not fully synced write buffer\n");

 del_timer_sync(&pblk->wtimer);
 if (pblk->writer_ts)
  kthread_stop(pblk->writer_ts);
}
