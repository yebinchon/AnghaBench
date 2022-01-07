
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int u_timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void pblk_rl_kick_u_timer(struct pblk_rl *rl)
{
 mod_timer(&rl->u_timer, jiffies + msecs_to_jiffies(5000));
}
