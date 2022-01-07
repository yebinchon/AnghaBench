
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int rl; } ;


 int pblk_rl_update_rates (int *) ;

void pblk_gc_should_kick(struct pblk *pblk)
{
 pblk_rl_update_rates(&pblk->rl);
}
