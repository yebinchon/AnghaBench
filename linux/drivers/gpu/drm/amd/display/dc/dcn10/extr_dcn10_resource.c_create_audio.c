
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_context {int dummy; } ;
struct audio {int dummy; } ;


 int audio_mask ;
 int * audio_regs ;
 int audio_shift ;
 struct audio* dce_audio_create (struct dc_context*,unsigned int,int *,int *,int *) ;

__attribute__((used)) static struct audio *create_audio(
  struct dc_context *ctx, unsigned int inst)
{
 return dce_audio_create(ctx, inst,
   &audio_regs[inst], &audio_shift, &audio_mask);
}
