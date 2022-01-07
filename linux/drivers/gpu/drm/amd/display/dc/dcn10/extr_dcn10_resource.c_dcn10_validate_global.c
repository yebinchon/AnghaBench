
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dc_state {int stream_count; TYPE_1__* stream_status; } ;
struct TYPE_9__ {int enable; } ;
struct TYPE_8__ {int width; scalar_t__ height; } ;
struct TYPE_7__ {int width; scalar_t__ height; } ;
struct dc_plane_state {scalar_t__ format; TYPE_4__ dcc; TYPE_3__ src_rect; TYPE_2__ dst_rect; } ;
struct dc {TYPE_5__* dcn_soc; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_10__ {int number_of_channels; } ;
struct TYPE_6__ {int plane_count; struct dc_plane_state** plane_states; } ;


 int DC_FAIL_SURFACE_VALIDATE ;
 int DC_FAIL_UNSUPPORTED_1 ;
 int DC_OK ;
 scalar_t__ SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;

__attribute__((used)) static enum dc_status dcn10_validate_global(struct dc *dc, struct dc_state *context)
{
 int i, j;
 bool video_down_scaled = 0;
 bool video_large = 0;
 bool desktop_large = 0;
 bool dcc_disabled = 0;

 for (i = 0; i < context->stream_count; i++) {
  if (context->stream_status[i].plane_count == 0)
   continue;

  if (context->stream_status[i].plane_count > 2)
   return DC_FAIL_UNSUPPORTED_1;

  for (j = 0; j < context->stream_status[i].plane_count; j++) {
   struct dc_plane_state *plane =
    context->stream_status[i].plane_states[j];


   if (plane->format >= SURFACE_PIXEL_FORMAT_VIDEO_BEGIN) {

    if (plane->src_rect.width > plane->dst_rect.width ||
      plane->src_rect.height > plane->dst_rect.height)
     video_down_scaled = 1;

    if (plane->src_rect.width >= 3840)
     video_large = 1;

   } else {
    if (plane->src_rect.width >= 3840)
     desktop_large = 1;
    if (!plane->dcc.enable)
     dcc_disabled = 1;
   }
  }
 }






 if (video_large && desktop_large && video_down_scaled && dcc_disabled &&
   dc->dcn_soc->number_of_channels == 1)
  return DC_FAIL_SURFACE_VALIDATE;

 return DC_OK;
}
