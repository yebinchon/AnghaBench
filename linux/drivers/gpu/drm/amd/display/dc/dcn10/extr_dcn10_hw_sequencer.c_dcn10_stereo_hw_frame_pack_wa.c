
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct dc_state {size_t stream_count; TYPE_2__** streams; } ;
struct dc {TYPE_3__* res_pool; } ;
struct TYPE_6__ {int hubbub; } ;
struct TYPE_4__ {scalar_t__ timing_3d_format; } ;
struct TYPE_5__ {TYPE_1__ timing; } ;


 scalar_t__ TIMING_3D_FORMAT_HW_FRAME_PACKING ;
 int hubbub1_allow_self_refresh_control (int ,int) ;

__attribute__((used)) static void dcn10_stereo_hw_frame_pack_wa(struct dc *dc, struct dc_state *context)
{
 uint8_t i;

 for (i = 0; i < context->stream_count; i++) {
  if (context->streams[i]->timing.timing_3d_format
    == TIMING_3D_FORMAT_HW_FRAME_PACKING) {



   hubbub1_allow_self_refresh_control(dc->res_pool->hubbub, 0);
   break;
  }
 }
}
