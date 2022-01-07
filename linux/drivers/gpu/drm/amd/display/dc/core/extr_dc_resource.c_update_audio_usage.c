
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int audio_count; struct audio** audios; } ;
struct resource_context {int* is_audio_acquired; } ;
struct audio {int dummy; } ;



void update_audio_usage(
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  struct audio *audio,
  bool acquired)
{
 int i;
 for (i = 0; i < pool->audio_count; i++) {
  if (pool->audios[i] == audio)
   res_ctx->is_audio_acquired[i] = acquired;
 }
}
