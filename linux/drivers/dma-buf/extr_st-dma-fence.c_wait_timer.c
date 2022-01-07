
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_timer {int f; } ;
struct timer_list {int dummy; } ;


 int dma_fence_signal (int ) ;
 struct wait_timer* from_timer (int ,struct timer_list*,struct timer_list*) ;
 struct wait_timer* wt ;

__attribute__((used)) static void wait_timer(struct timer_list *timer)
{
 struct wait_timer *wt = from_timer(wt, timer, timer);

 dma_fence_signal(wt->f);
}
