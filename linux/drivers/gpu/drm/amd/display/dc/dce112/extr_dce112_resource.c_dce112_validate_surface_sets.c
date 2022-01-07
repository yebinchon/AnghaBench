
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_state {int stream_count; TYPE_2__* stream_status; } ;
struct TYPE_4__ {int plane_count; TYPE_1__** plane_states; } ;
struct TYPE_3__ {scalar_t__ format; } ;


 scalar_t__ SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;

__attribute__((used)) static bool dce112_validate_surface_sets(
  struct dc_state *context)
{
 int i;

 for (i = 0; i < context->stream_count; i++) {
  if (context->stream_status[i].plane_count == 0)
   continue;

  if (context->stream_status[i].plane_count > 1)
   return 0;

  if (context->stream_status[i].plane_states[0]->format
    >= SURFACE_PIXEL_FORMAT_VIDEO_BEGIN)
   return 0;
 }

 return 1;
}
