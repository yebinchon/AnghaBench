
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_stream_state {TYPE_1__* link; int signal; } ;
struct dc_state {int stream_count; struct dc_stream_state** streams; } ;
struct TYPE_2__ {scalar_t__ connector_signal; } ;


 scalar_t__ SIGNAL_TYPE_VIRTUAL ;
 int dc_is_dp_signal (int ) ;
 scalar_t__ resource_are_streams_timing_synchronizable (struct dc_stream_state*,struct dc_stream_state*) ;

__attribute__((used)) static struct dc_stream_state *find_pll_sharable_stream(
  struct dc_stream_state *stream_needs_pll,
  struct dc_state *context)
{
 int i;

 for (i = 0; i < context->stream_count; i++) {
  struct dc_stream_state *stream_has_pll = context->streams[i];


  if (resource_are_streams_timing_synchronizable(
   stream_needs_pll, stream_has_pll)
   && !dc_is_dp_signal(stream_has_pll->signal)
   && stream_has_pll->link->connector_signal
   != SIGNAL_TYPE_VIRTUAL)
   return stream_has_pll;

 }

 return ((void*)0);
}
