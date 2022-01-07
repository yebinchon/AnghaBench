
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc {int gc_writer_ts; } ;


 int wake_up_process (int ) ;

__attribute__((used)) static void pblk_gc_writer_kick(struct pblk_gc *gc)
{
 wake_up_process(gc->gc_writer_ts);
}
