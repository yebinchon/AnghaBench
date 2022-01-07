
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc {scalar_t__ gc_writer_ts; int gc_line_reader_wq; int gc_reader_wq; scalar_t__ gc_reader_ts; scalar_t__ gc_ts; scalar_t__ gc_active; int gc_timer; scalar_t__ gc_enabled; } ;
struct pblk {struct pblk_gc gc; } ;


 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int kthread_stop (scalar_t__) ;

void pblk_gc_exit(struct pblk *pblk, bool graceful)
{
 struct pblk_gc *gc = &pblk->gc;

 gc->gc_enabled = 0;
 del_timer_sync(&gc->gc_timer);
 gc->gc_active = 0;

 if (gc->gc_ts)
  kthread_stop(gc->gc_ts);

 if (gc->gc_reader_ts)
  kthread_stop(gc->gc_reader_ts);

 if (graceful) {
  flush_workqueue(gc->gc_reader_wq);
  flush_workqueue(gc->gc_line_reader_wq);
 }

 destroy_workqueue(gc->gc_reader_wq);
 destroy_workqueue(gc->gc_line_reader_wq);

 if (gc->gc_writer_ts)
  kthread_stop(gc->gc_writer_ts);
}
