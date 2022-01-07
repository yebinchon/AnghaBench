
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_state {int dummy; } ;
struct dc_link {TYPE_1__* local_sink; } ;
struct dc {int link_count; struct dc_link** links; } ;
struct TYPE_2__ {scalar_t__ sink_signal; } ;


 scalar_t__ SIGNAL_TYPE_EDP ;

__attribute__((used)) static struct dc_link *get_edp_link_with_sink(
  struct dc *dc,
  struct dc_state *context)
{
 int i;
 struct dc_link *link = ((void*)0);


 for (i = 0; i < dc->link_count; i++) {
  if (dc->links[i]->local_sink &&
   dc->links[i]->local_sink->sink_signal == SIGNAL_TYPE_EDP) {
   link = dc->links[i];
   break;
  }
 }

 return link;
}
