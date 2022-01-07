
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc {int pipeline_gc; } ;
struct pblk {struct pblk_gc gc; } ;


 int TASK_INTERRUPTIBLE ;
 int atomic_read (int *) ;
 int io_schedule () ;
 int kthread_should_stop () ;
 int pblk_gc_read (struct pblk*) ;
 int pblk_info (struct pblk*,char*,int ) ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static int pblk_gc_reader_ts(void *data)
{
 struct pblk *pblk = data;
 struct pblk_gc *gc = &pblk->gc;

 while (!kthread_should_stop()) {
  if (!pblk_gc_read(pblk))
   continue;
  set_current_state(TASK_INTERRUPTIBLE);
  io_schedule();
 }






 do {
  if (!atomic_read(&gc->pipeline_gc))
   break;

  schedule();
 } while (1);

 return 0;
}
