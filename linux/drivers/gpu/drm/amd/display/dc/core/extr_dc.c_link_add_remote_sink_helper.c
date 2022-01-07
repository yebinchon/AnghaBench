
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_sink {int dummy; } ;
struct dc_link {size_t sink_count; struct dc_sink** remote_sinks; } ;


 int BREAK_TO_DEBUGGER () ;
 size_t MAX_SINKS_PER_LINK ;
 int dc_sink_retain (struct dc_sink*) ;

__attribute__((used)) static bool link_add_remote_sink_helper(struct dc_link *dc_link, struct dc_sink *sink)
{
 if (dc_link->sink_count >= MAX_SINKS_PER_LINK) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 dc_sink_retain(sink);

 dc_link->remote_sinks[dc_link->sink_count] = sink;
 dc_link->sink_count++;

 return 1;
}
