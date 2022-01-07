
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_encoder {scalar_t__ id; } ;
struct resource_pool {int stream_enc_count; struct stream_encoder** stream_enc; } ;
struct resource_context {int * is_stream_enc_acquired; } ;
struct dc_stream_state {struct dc_link* link; } ;
struct dc_link {TYPE_1__* link_enc; } ;
struct TYPE_2__ {scalar_t__ preferred_engine; } ;



struct stream_encoder *dce110_find_first_free_match_stream_enc_for_link(
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  struct dc_stream_state *stream)
{
 int i;
 int j = -1;
 struct dc_link *link = stream->link;

 for (i = 0; i < pool->stream_enc_count; i++) {
  if (!res_ctx->is_stream_enc_acquired[i] &&
    pool->stream_enc[i]) {



   j = i;
   if (pool->stream_enc[i]->id ==
     link->link_enc->preferred_engine)
    return pool->stream_enc[i];
  }
 }





 if (j >= 0)
  return pool->stream_enc[j];

 return ((void*)0);
}
