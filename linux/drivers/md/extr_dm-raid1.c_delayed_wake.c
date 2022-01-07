
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct mirror_set {TYPE_1__ timer; int timer_pending; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void delayed_wake(struct mirror_set *ms)
{
 if (test_and_set_bit(0, &ms->timer_pending))
  return;

 ms->timer.expires = jiffies + HZ / 5;
 add_timer(&ms->timer);
}
