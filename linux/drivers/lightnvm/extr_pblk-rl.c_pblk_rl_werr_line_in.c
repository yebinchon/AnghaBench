
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int werr_lines; } ;


 int atomic_inc (int *) ;

void pblk_rl_werr_line_in(struct pblk_rl *rl)
{
 atomic_inc(&rl->werr_lines);
}
