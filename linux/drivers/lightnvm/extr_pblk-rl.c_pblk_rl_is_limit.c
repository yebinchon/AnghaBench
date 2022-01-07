
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_space; } ;


 int atomic_read (int *) ;

int pblk_rl_is_limit(struct pblk_rl *rl)
{
 int rb_space;

 rb_space = atomic_read(&rl->rb_space);

 return (rb_space == 0);
}
