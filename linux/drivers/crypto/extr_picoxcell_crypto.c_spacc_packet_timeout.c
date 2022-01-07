
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct spacc_engine {int dummy; } ;


 struct spacc_engine* engine ;
 struct spacc_engine* from_timer (int ,struct timer_list*,int ) ;
 int packet_timeout ;
 int spacc_process_done (struct spacc_engine*) ;

__attribute__((used)) static void spacc_packet_timeout(struct timer_list *t)
{
 struct spacc_engine *engine = from_timer(engine, t, packet_timeout);

 spacc_process_done(engine);
}
