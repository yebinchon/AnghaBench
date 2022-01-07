
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource_straps {int member_0; } ;
struct resource_pool {size_t audio_count; size_t stream_enc_count; int ** stream_enc; struct audio** audios; int audio_support; struct resource_caps* res_cap; } ;
struct resource_create_funcs {int (* create_hwseq ) (struct dc_context*) ;int * (* create_stream_encoder ) (int,struct dc_context*) ;struct audio* (* create_audio ) (struct dc_context*,int) ;int (* read_dce_straps ) (struct dc_context*,struct resource_straps*) ;} ;
struct resource_caps {unsigned int num_audio; int num_stream_encoder; } ;
struct dc_context {int dc_bios; } ;
struct TYPE_4__ {int dynamic_audio; } ;
struct dc {int hwseq; TYPE_2__ caps; struct dc_context* ctx; } ;
struct audio {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* destroy ) (struct audio**) ;int (* endpoint_valid ) (struct audio*) ;} ;


 int DC_ERR (char*) ;
 int stub1 (struct dc_context*,struct resource_straps*) ;
 struct audio* stub2 (struct dc_context*,int) ;
 int stub3 (struct audio*) ;
 int stub4 (struct audio**) ;
 int * stub5 (int,struct dc_context*) ;
 int stub6 (struct dc_context*) ;
 int update_num_audio (struct resource_straps*,unsigned int*,int *) ;
 int * virtual_stream_encoder_create (struct dc_context*,int ) ;

bool resource_construct(
 unsigned int num_virtual_links,
 struct dc *dc,
 struct resource_pool *pool,
 const struct resource_create_funcs *create_funcs)
{
 struct dc_context *ctx = dc->ctx;
 const struct resource_caps *caps = pool->res_cap;
 int i;
 unsigned int num_audio = caps->num_audio;
 struct resource_straps straps = {0};

 if (create_funcs->read_dce_straps)
  create_funcs->read_dce_straps(dc->ctx, &straps);

 pool->audio_count = 0;
 if (create_funcs->create_audio) {







  update_num_audio(&straps, &num_audio, &pool->audio_support);
  for (i = 0; i < caps->num_audio; i++) {
   struct audio *aud = create_funcs->create_audio(ctx, i);

   if (aud == ((void*)0)) {
    DC_ERR("DC: failed to create audio!\n");
    return 0;
   }
   if (!aud->funcs->endpoint_valid(aud)) {
    aud->funcs->destroy(&aud);
    break;
   }
   pool->audios[i] = aud;
   pool->audio_count++;
  }
 }

 pool->stream_enc_count = 0;
 if (create_funcs->create_stream_encoder) {
  for (i = 0; i < caps->num_stream_encoder; i++) {
   pool->stream_enc[i] = create_funcs->create_stream_encoder(i, ctx);
   if (pool->stream_enc[i] == ((void*)0))
    DC_ERR("DC: failed to create stream_encoder!\n");
   pool->stream_enc_count++;
  }
 }

 dc->caps.dynamic_audio = 0;
 if (pool->audio_count < pool->stream_enc_count) {
  dc->caps.dynamic_audio = 1;
 }
 for (i = 0; i < num_virtual_links; i++) {
  pool->stream_enc[pool->stream_enc_count] =
   virtual_stream_encoder_create(
     ctx, ctx->dc_bios);
  if (pool->stream_enc[pool->stream_enc_count] == ((void*)0)) {
   DC_ERR("DC: failed to create stream_encoder!\n");
   return 0;
  }
  pool->stream_enc_count++;
 }

 dc->hwseq = create_funcs->create_hwseq(ctx);

 return 1;
}
