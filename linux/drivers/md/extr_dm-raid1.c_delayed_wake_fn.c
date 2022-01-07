
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mirror_set {int timer_pending; } ;


 int clear_bit (int ,int *) ;
 struct mirror_set* from_timer (int ,struct timer_list*,int ) ;
 struct mirror_set* ms ;
 int timer ;
 int wakeup_mirrord (struct mirror_set*) ;

__attribute__((used)) static void delayed_wake_fn(struct timer_list *t)
{
 struct mirror_set *ms = from_timer(ms, t, timer);

 clear_bit(0, &ms->timer_pending);
 wakeup_mirrord(ms);
}
