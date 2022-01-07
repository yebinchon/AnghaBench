
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gc_active; } ;
struct pblk {TYPE_1__ gc; } ;


 int pblk_debug (struct pblk*,char*) ;

__attribute__((used)) static void pblk_gc_start(struct pblk *pblk)
{
 pblk->gc.gc_active = 1;
 pblk_debug(pblk, "gc start\n");
}
