
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct locomokbd {int dummy; } ;


 struct locomokbd* from_timer (int ,struct timer_list*,int ) ;
 struct locomokbd* locomokbd ;
 int locomokbd_scankeyboard (struct locomokbd*) ;
 int timer ;

__attribute__((used)) static void locomokbd_timer_callback(struct timer_list *t)
{
 struct locomokbd *locomokbd = from_timer(locomokbd, t, timer);

 locomokbd_scankeyboard(locomokbd);
}
