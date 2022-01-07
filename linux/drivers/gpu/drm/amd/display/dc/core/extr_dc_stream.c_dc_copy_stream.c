
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_stream_state {int refcount; TYPE_1__* ctx; int stream_id; scalar_t__ out_transfer_func; scalar_t__ sink; } ;
struct TYPE_2__ {int dc_stream_id_count; } ;


 int GFP_KERNEL ;
 int dc_sink_retain (scalar_t__) ;
 int dc_transfer_func_retain (scalar_t__) ;
 struct dc_stream_state* kmemdup (struct dc_stream_state const*,int,int ) ;
 int kref_init (int *) ;

struct dc_stream_state *dc_copy_stream(const struct dc_stream_state *stream)
{
 struct dc_stream_state *new_stream;

 new_stream = kmemdup(stream, sizeof(struct dc_stream_state), GFP_KERNEL);
 if (!new_stream)
  return ((void*)0);

 if (new_stream->sink)
  dc_sink_retain(new_stream->sink);

 if (new_stream->out_transfer_func)
  dc_transfer_func_retain(new_stream->out_transfer_func);

 new_stream->stream_id = new_stream->ctx->dc_stream_id_count;
 new_stream->ctx->dc_stream_id_count++;

 kref_init(&new_stream->refcount);

 return new_stream;
}
