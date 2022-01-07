
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct l1oip {int workq; } ;


 struct l1oip* from_timer (int ,struct timer_list*,int ) ;
 struct l1oip* hc ;
 int keep_tl ;
 int schedule_work (int *) ;

__attribute__((used)) static void
l1oip_keepalive(struct timer_list *t)
{
 struct l1oip *hc = from_timer(hc, t, keep_tl);

 schedule_work(&hc->workq);
}
