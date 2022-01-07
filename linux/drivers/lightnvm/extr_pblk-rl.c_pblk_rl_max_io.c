
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_max_io; } ;



int pblk_rl_max_io(struct pblk_rl *rl)
{
 return rl->rb_max_io;
}
