
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pix_clk_100hz; int display_color_depth; int pixel_encoding; int v_total; int h_total; } ;
struct TYPE_6__ {int height; int width; int y; int x; } ;
struct TYPE_5__ {int height; int width; int y; int x; } ;
struct dc_stream_state {TYPE_4__* link; TYPE_3__ timing; int output_color_space; TYPE_2__ dst; TYPE_1__ src; } ;
struct dc {int dummy; } ;
struct TYPE_8__ {int link_index; } ;


 int DC_LOG_DC (char*,...) ;

void dc_stream_log(const struct dc *dc, const struct dc_stream_state *stream)
{
 DC_LOG_DC(
   "core_stream 0x%p: src: %d, %d, %d, %d; dst: %d, %d, %d, %d, colorSpace:%d\n",
   stream,
   stream->src.x,
   stream->src.y,
   stream->src.width,
   stream->src.height,
   stream->dst.x,
   stream->dst.y,
   stream->dst.width,
   stream->dst.height,
   stream->output_color_space);
 DC_LOG_DC(
   "\tpix_clk_khz: %d, h_total: %d, v_total: %d, pixelencoder:%d, displaycolorDepth:%d\n",
   stream->timing.pix_clk_100hz / 10,
   stream->timing.h_total,
   stream->timing.v_total,
   stream->timing.pixel_encoding,
   stream->timing.display_color_depth);
 DC_LOG_DC(
   "\tlink: %d\n",
   stream->link->link_index);
}
