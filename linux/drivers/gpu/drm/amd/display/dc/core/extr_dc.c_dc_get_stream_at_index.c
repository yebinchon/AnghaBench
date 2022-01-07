
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct dc_stream_state {int dummy; } ;
struct dc {TYPE_1__* current_state; } ;
struct TYPE_2__ {size_t stream_count; struct dc_stream_state** streams; } ;



struct dc_stream_state *dc_get_stream_at_index(struct dc *dc, uint8_t i)
{
 if (i < dc->current_state->stream_count)
  return dc->current_state->streams[i];
 return ((void*)0);
}
