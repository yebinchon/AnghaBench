
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct delay_c {int flush_expired_bios; int kdelayd_wq; } ;


 struct delay_c* dc ;
 int delay_timer ;
 struct delay_c* from_timer (int ,struct timer_list*,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void handle_delayed_timer(struct timer_list *t)
{
 struct delay_c *dc = from_timer(dc, t, delay_timer);

 queue_work(dc->kdelayd_wq, &dc->flush_expired_bios);
}
