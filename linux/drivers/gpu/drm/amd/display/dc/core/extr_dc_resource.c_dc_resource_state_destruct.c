
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_state {int stream_count; int ** streams; TYPE_1__* stream_status; } ;
struct TYPE_2__ {int plane_count; int * plane_states; } ;


 int dc_plane_state_release (int ) ;
 int dc_stream_release (int *) ;

void dc_resource_state_destruct(struct dc_state *context)
{
 int i, j;

 for (i = 0; i < context->stream_count; i++) {
  for (j = 0; j < context->stream_status[i].plane_count; j++)
   dc_plane_state_release(
    context->stream_status[i].plane_states[j]);

  context->stream_status[i].plane_count = 0;
  dc_stream_release(context->streams[i]);
  context->streams[i] = ((void*)0);
 }
}
