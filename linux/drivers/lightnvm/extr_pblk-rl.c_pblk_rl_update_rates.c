
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int dummy; } ;


 int __pblk_rl_update_rates (struct pblk_rl*,int ) ;
 int pblk_rl_nr_user_free_blks (struct pblk_rl*) ;

void pblk_rl_update_rates(struct pblk_rl *rl)
{
 __pblk_rl_update_rates(rl, pblk_rl_nr_user_free_blks(rl));
}
