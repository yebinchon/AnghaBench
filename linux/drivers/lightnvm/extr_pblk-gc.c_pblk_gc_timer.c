
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct pblk {int dummy; } ;
struct TYPE_2__ {int gc_timer; } ;


 struct pblk* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ gc ;
 struct pblk* pblk ;
 int pblk_gc_kick (struct pblk*) ;

__attribute__((used)) static void pblk_gc_timer(struct timer_list *t)
{
 struct pblk *pblk = from_timer(pblk, t, gc.gc_timer);

 pblk_gc_kick(pblk);
}
