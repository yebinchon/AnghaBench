
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc {scalar_t__ gc_active; int gc_forced; } ;
struct pblk {struct pblk_gc gc; } ;



void pblk_gc_should_stop(struct pblk *pblk)
{
 struct pblk_gc *gc = &pblk->gc;

 if (gc->gc_active && !gc->gc_forced)
  gc->gc_active = 0;
}
