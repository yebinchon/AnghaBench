
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc {int gc_active; scalar_t__ gc_enabled; } ;
struct pblk {struct pblk_gc gc; } ;


 int pblk_gc_kick (struct pblk*) ;
 int pblk_gc_start (struct pblk*) ;

void pblk_gc_should_start(struct pblk *pblk)
{
 struct pblk_gc *gc = &pblk->gc;

 if (gc->gc_enabled && !gc->gc_active) {
  pblk_gc_start(pblk);
  pblk_gc_kick(pblk);
 }
}
