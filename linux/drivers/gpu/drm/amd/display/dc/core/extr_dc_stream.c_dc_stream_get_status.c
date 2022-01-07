
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_stream_status {int dummy; } ;
struct dc_stream_state {TYPE_1__* ctx; } ;
struct dc {int current_state; } ;
struct TYPE_2__ {struct dc* dc; } ;


 struct dc_stream_status* dc_stream_get_status_from_state (int ,struct dc_stream_state*) ;

struct dc_stream_status *dc_stream_get_status(
 struct dc_stream_state *stream)
{
 struct dc *dc = stream->ctx->dc;
 return dc_stream_get_status_from_state(dc->current_state, stream);
}
