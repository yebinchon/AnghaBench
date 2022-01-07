
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_user_active; int rb_user_cnt; } ;


 int atomic_add (int,int *) ;
 int pblk_rl_kick_u_timer (struct pblk_rl*) ;
 int smp_store_release (int *,int) ;

void pblk_rl_user_in(struct pblk_rl *rl, int nr_entries)
{
 atomic_add(nr_entries, &rl->rb_user_cnt);


 smp_store_release(&rl->rb_user_active, 1);
 pblk_rl_kick_u_timer(rl);
}
