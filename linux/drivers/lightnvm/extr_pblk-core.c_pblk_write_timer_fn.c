
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pblk {int dummy; } ;


 struct pblk* from_timer (int ,struct timer_list*,int ) ;
 struct pblk* pblk ;
 int pblk_write_kick (struct pblk*) ;
 int wtimer ;

void pblk_write_timer_fn(struct timer_list *t)
{
 struct pblk *pblk = from_timer(pblk, t, wtimer);


 pblk_write_kick(pblk);
}
