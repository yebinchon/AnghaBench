
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_space; } ;


 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 scalar_t__ unlikely (int) ;

void pblk_rl_inserted(struct pblk_rl *rl, int nr_entries)
{
 int rb_space = atomic_read(&rl->rb_space);

 if (unlikely(rb_space >= 0))
  atomic_sub(nr_entries, &rl->rb_space);
}
