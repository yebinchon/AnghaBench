
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc {int gc_timer; int gc_ts; scalar_t__ gc_enabled; } ;
struct pblk {struct pblk_gc gc; } ;


 int GC_TIME_MSECS ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int pblk_gc_reader_kick (struct pblk_gc*) ;
 int pblk_gc_writer_kick (struct pblk_gc*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void pblk_gc_kick(struct pblk *pblk)
{
 struct pblk_gc *gc = &pblk->gc;

 pblk_gc_writer_kick(gc);
 pblk_gc_reader_kick(gc);


 if (gc->gc_enabled) {
  wake_up_process(gc->gc_ts);
  mod_timer(&gc->gc_timer,
     jiffies + msecs_to_jiffies(GC_TIME_MSECS));
 }
}
