
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int high; } ;



int pblk_rl_high_thrs(struct pblk_rl *rl)
{
 return rl->high;
}
