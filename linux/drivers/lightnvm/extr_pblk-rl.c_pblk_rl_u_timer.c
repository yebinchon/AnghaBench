
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pblk_rl {int rb_user_active; } ;


 struct pblk_rl* from_timer (int ,struct timer_list*,int ) ;
 struct pblk_rl* rl ;
 int smp_store_release (int *,int ) ;
 int u_timer ;

__attribute__((used)) static void pblk_rl_u_timer(struct timer_list *t)
{
 struct pblk_rl *rl = from_timer(rl, t, u_timer);


 smp_store_release(&rl->rb_user_active, 0);
}
