
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_gc_cnt; } ;


 int atomic_add (int,int *) ;

void pblk_rl_gc_in(struct pblk_rl *rl, int nr_entries)
{
 atomic_add(nr_entries, &rl->rb_gc_cnt);
}
