
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_sink {int dummy; } ;
struct dc_link {int sink_count; struct dc_sink** remote_sinks; } ;


 int BREAK_TO_DEBUGGER () ;
 int dc_sink_release (struct dc_sink*) ;

void dc_link_remove_remote_sink(struct dc_link *link, struct dc_sink *sink)
{
 int i;

 if (!link->sink_count) {
  BREAK_TO_DEBUGGER();
  return;
 }

 for (i = 0; i < link->sink_count; i++) {
  if (link->remote_sinks[i] == sink) {
   dc_sink_release(sink);
   link->remote_sinks[i] = ((void*)0);


   while (i < link->sink_count - 1) {
    link->remote_sinks[i] = link->remote_sinks[i+1];
    i++;
   }
   link->remote_sinks[i] = ((void*)0);
   link->sink_count--;
   return;
  }
 }
}
