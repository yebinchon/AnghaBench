
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int u_timer; } ;


 int del_timer (int *) ;

void pblk_rl_free(struct pblk_rl *rl)
{
 del_timer(&rl->u_timer);
}
