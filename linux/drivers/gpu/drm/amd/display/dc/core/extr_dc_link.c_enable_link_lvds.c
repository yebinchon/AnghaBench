
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pipe_ctx {TYPE_3__* clock_source; struct dc_stream_state* stream; } ;
struct TYPE_5__ {int pix_clk_100hz; } ;
struct dc_stream_state {int phy_pix_clk; struct dc_link* link; TYPE_1__ timing; } ;
struct dc_link_settings {int dummy; } ;
struct dc_link {TYPE_4__* link_enc; int cur_link_settings; } ;
struct TYPE_8__ {TYPE_2__* funcs; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int (* enable_lvds_output ) (TYPE_4__*,int ,int) ;} ;


 int memset (int *,int ,int) ;
 int stub1 (TYPE_4__*,int ,int) ;

__attribute__((used)) static void enable_link_lvds(struct pipe_ctx *pipe_ctx)
{
 struct dc_stream_state *stream = pipe_ctx->stream;
 struct dc_link *link = stream->link;

 if (stream->phy_pix_clk == 0)
  stream->phy_pix_clk = stream->timing.pix_clk_100hz / 10;

 memset(&stream->link->cur_link_settings, 0,
   sizeof(struct dc_link_settings));

 link->link_enc->funcs->enable_lvds_output(
   link->link_enc,
   pipe_ctx->clock_source->id,
   stream->phy_pix_clk);

}
