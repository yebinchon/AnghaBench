
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {scalar_t__ signal; int dpms_off; } ;
struct dc_state {int stream_count; struct dc_stream_state** streams; } ;
struct dc {int dummy; } ;


 scalar_t__ SIGNAL_TYPE_VIRTUAL ;

int clk_mgr_helper_get_active_display_cnt(
  struct dc *dc,
  struct dc_state *context)
{
 int i, display_count;

 display_count = 0;
 for (i = 0; i < context->stream_count; i++) {
  const struct dc_stream_state *stream = context->streams[i];







  if (!stream->dpms_off || stream->signal == SIGNAL_TYPE_VIRTUAL)
   display_count++;
 }

 return display_count;
}
