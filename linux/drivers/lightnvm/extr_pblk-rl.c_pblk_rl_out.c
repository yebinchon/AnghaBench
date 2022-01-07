
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_gc_cnt; int rb_user_cnt; } ;


 int atomic_sub (int,int *) ;

void pblk_rl_out(struct pblk_rl *rl, int nr_user, int nr_gc)
{
 atomic_sub(nr_user, &rl->rb_user_cnt);
 atomic_sub(nr_gc, &rl->rb_gc_cnt);
}
