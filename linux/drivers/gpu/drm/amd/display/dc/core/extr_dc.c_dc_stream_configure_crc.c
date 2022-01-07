
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timing_generator {TYPE_5__* funcs; } ;
struct TYPE_9__ {struct timing_generator* tg; } ;
struct pipe_ctx {TYPE_4__ stream_res; struct dc_stream_state* stream; } ;
struct TYPE_8__ {int v_addressable; int h_addressable; } ;
struct dc_stream_state {TYPE_3__ timing; } ;
struct dc {TYPE_2__* current_state; } ;
struct crc_params {int continuous_mode; int enable; int selection; int windowb_y_end; int windowb_x_end; scalar_t__ windowb_y_start; scalar_t__ windowb_x_start; int windowa_y_end; int windowa_x_end; scalar_t__ windowa_y_start; scalar_t__ windowa_x_start; } ;
struct TYPE_10__ {int (* configure_crc ) (struct timing_generator*,struct crc_params*) ;} ;
struct TYPE_6__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_7__ {TYPE_1__ res_ctx; } ;


 int DC_LOG_WARNING (char*) ;
 int MAX_PIPES ;
 int UNION_WINDOW_A_B ;
 int stub1 (struct timing_generator*,struct crc_params*) ;

bool dc_stream_configure_crc(struct dc *dc, struct dc_stream_state *stream,
        bool enable, bool continuous)
{
 int i;
 struct pipe_ctx *pipe;
 struct crc_params param;
 struct timing_generator *tg;

 for (i = 0; i < MAX_PIPES; i++) {
  pipe = &dc->current_state->res_ctx.pipe_ctx[i];
  if (pipe->stream == stream)
   break;
 }

 if (i == MAX_PIPES)
  return 0;


 param.windowa_x_start = 0;
 param.windowa_y_start = 0;
 param.windowa_x_end = pipe->stream->timing.h_addressable;
 param.windowa_y_end = pipe->stream->timing.v_addressable;
 param.windowb_x_start = 0;
 param.windowb_y_start = 0;
 param.windowb_x_end = pipe->stream->timing.h_addressable;
 param.windowb_y_end = pipe->stream->timing.v_addressable;


 param.selection = UNION_WINDOW_A_B;
 param.continuous_mode = continuous;
 param.enable = enable;

 tg = pipe->stream_res.tg;


 if (tg->funcs->configure_crc)
  return tg->funcs->configure_crc(tg, &param);
 DC_LOG_WARNING("CRC capture not supported.");
 return 0;
}
