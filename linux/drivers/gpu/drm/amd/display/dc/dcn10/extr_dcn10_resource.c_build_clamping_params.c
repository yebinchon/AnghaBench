
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pixel_encoding; int display_color_depth; } ;
struct TYPE_3__ {int pixel_encoding; int c_depth; int clamping_level; } ;
struct dc_stream_state {TYPE_2__ timing; TYPE_1__ clamping; } ;


 int CLAMPING_FULL_RANGE ;

__attribute__((used)) static void build_clamping_params(struct dc_stream_state *stream)
{
 stream->clamping.clamping_level = CLAMPING_FULL_RANGE;
 stream->clamping.c_depth = stream->timing.display_color_depth;
 stream->clamping.pixel_encoding = stream->timing.pixel_encoding;
}
