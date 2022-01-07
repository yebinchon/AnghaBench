
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_audio_shift {int dummy; } ;
struct dce_audio_registers {int dummy; } ;
struct dce_audio_mask {int dummy; } ;
struct audio {unsigned int inst; int * funcs; struct dc_context* ctx; } ;
struct dce_audio {struct audio base; struct dce_audio_mask const* masks; struct dce_audio_shift const* shifts; struct dce_audio_registers const* regs; } ;
struct dc_context {int dummy; } ;


 int ASSERT_CRITICAL (struct dce_audio*) ;
 int GFP_KERNEL ;
 int funcs ;
 struct dce_audio* kzalloc (int,int ) ;

struct audio *dce_audio_create(
  struct dc_context *ctx,
  unsigned int inst,
  const struct dce_audio_registers *reg,
  const struct dce_audio_shift *shifts,
  const struct dce_audio_mask *masks
  )
{
 struct dce_audio *audio = kzalloc(sizeof(*audio), GFP_KERNEL);

 if (audio == ((void*)0)) {
  ASSERT_CRITICAL(audio);
  return ((void*)0);
 }

 audio->base.ctx = ctx;
 audio->base.inst = inst;
 audio->base.funcs = &funcs;

 audio->regs = reg;
 audio->shifts = shifts;
 audio->masks = masks;
 return &audio->base;
}
