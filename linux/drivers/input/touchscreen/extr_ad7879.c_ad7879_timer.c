
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ad7879 {int dummy; } ;


 int ad7879_ts_event_release (struct ad7879*) ;
 struct ad7879* from_timer (int ,struct timer_list*,int ) ;
 int timer ;
 struct ad7879* ts ;

__attribute__((used)) static void ad7879_timer(struct timer_list *t)
{
 struct ad7879 *ts = from_timer(ts, t, timer);

 ad7879_ts_event_release(ts);
}
