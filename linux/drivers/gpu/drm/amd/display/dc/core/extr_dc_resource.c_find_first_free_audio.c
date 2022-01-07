
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int audio_count; struct audio** audios; } ;
struct resource_context {int* is_audio_acquired; int* is_stream_enc_acquired; } ;
struct audio {int dummy; } ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;



__attribute__((used)) static struct audio *find_first_free_audio(
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  enum engine_id id)
{
 int i, available_audio_count;

 available_audio_count = pool->audio_count;

 for (i = 0; i < available_audio_count; i++) {
  if ((res_ctx->is_audio_acquired[i] == 0) && (res_ctx->is_stream_enc_acquired[i] == 1)) {

   if (id != i)
    continue;
   return pool->audios[i];
  }
 }


 if ((id < available_audio_count) && (res_ctx->is_audio_acquired[id] == 0)) {
  return pool->audios[id];
 }

 for (i = 0; i < available_audio_count; i++) {
  if (res_ctx->is_audio_acquired[i] == 0) {
   return pool->audios[i];
  }
 }
 return 0;
}
