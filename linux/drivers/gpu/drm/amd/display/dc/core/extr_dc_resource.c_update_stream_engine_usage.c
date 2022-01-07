
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct resource_pool {int stream_enc_count; struct stream_encoder** stream_enc; } ;
struct resource_context {int* is_stream_enc_acquired; } ;



__attribute__((used)) static void update_stream_engine_usage(
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  struct stream_encoder *stream_enc,
  bool acquired)
{
 int i;

 for (i = 0; i < pool->stream_enc_count; i++) {
  if (pool->stream_enc[i] == stream_enc)
   res_ctx->is_stream_enc_acquired[i] = acquired;
 }
}
