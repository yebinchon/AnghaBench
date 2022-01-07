
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct dc_state {scalar_t__ stream_count; scalar_t__* streams; } ;
struct dc {TYPE_1__* current_state; } ;
struct TYPE_2__ {scalar_t__ stream_count; scalar_t__* streams; } ;



__attribute__((used)) static bool context_changed(
  struct dc *dc,
  struct dc_state *context)
{
 uint8_t i;

 if (context->stream_count != dc->current_state->stream_count)
  return 1;

 for (i = 0; i < dc->current_state->stream_count; i++) {
  if (dc->current_state->streams[i] != context->streams[i])
   return 1;
 }

 return 0;
}
