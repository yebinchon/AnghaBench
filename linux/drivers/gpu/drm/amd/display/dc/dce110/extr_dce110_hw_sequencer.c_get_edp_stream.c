
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {scalar_t__ signal; } ;
struct dc_state {int stream_count; struct dc_stream_state** streams; } ;


 scalar_t__ SIGNAL_TYPE_EDP ;

__attribute__((used)) static struct dc_stream_state *get_edp_stream(struct dc_state *context)
{
 int i;

 for (i = 0; i < context->stream_count; i++) {
  if (context->streams[i]->signal == SIGNAL_TYPE_EDP)
   return context->streams[i];
 }
 return ((void*)0);
}
