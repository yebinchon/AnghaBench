
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
struct timer_list {int dummy; } ;


 struct wiimote_data* from_timer (int ,struct timer_list*,int ) ;
 int timer ;
 struct wiimote_data* wdata ;
 int wiimote_schedule (struct wiimote_data*) ;

__attribute__((used)) static void wiimote_init_timeout(struct timer_list *t)
{
 struct wiimote_data *wdata = from_timer(wdata, t, timer);

 wiimote_schedule(wdata);
}
