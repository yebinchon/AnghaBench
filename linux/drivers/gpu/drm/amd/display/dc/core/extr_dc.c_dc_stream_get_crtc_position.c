
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ stream_enc; } ;
struct pipe_ctx {TYPE_3__ stream_res; struct dc_stream_state const* stream; } ;
struct dc_stream_state {int dummy; } ;
struct TYPE_8__ {int (* get_position ) (struct pipe_ctx**,int,struct crtc_position*) ;} ;
struct dc {TYPE_4__ hwss; TYPE_2__* current_state; } ;
struct crtc_position {unsigned int vertical_count; unsigned int nominal_vcount; } ;
struct TYPE_5__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_6__ {TYPE_1__ res_ctx; } ;


 int MAX_PIPES ;
 int stub1 (struct pipe_ctx**,int,struct crtc_position*) ;

bool dc_stream_get_crtc_position(struct dc *dc,
  struct dc_stream_state **streams, int num_streams,
  unsigned int *v_pos, unsigned int *nom_v_pos)
{

 const struct dc_stream_state *stream = streams[0];
 int i = 0;
 bool ret = 0;
 struct crtc_position position;

 for (i = 0; i < MAX_PIPES; i++) {
  struct pipe_ctx *pipe =
    &dc->current_state->res_ctx.pipe_ctx[i];

  if (pipe->stream == stream && pipe->stream_res.stream_enc) {
   dc->hwss.get_position(&pipe, 1, &position);

   *v_pos = position.vertical_count;
   *nom_v_pos = position.nominal_vcount;
   ret = 1;
  }
 }
 return ret;
}
