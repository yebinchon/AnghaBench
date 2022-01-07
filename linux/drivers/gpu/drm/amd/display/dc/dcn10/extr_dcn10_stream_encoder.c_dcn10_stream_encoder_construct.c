
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcn10_stream_encoder_shift {int dummy; } ;
struct dcn10_stream_encoder_mask {int dummy; } ;
struct TYPE_2__ {int id; struct dc_bios* bp; struct dc_context* ctx; int * funcs; } ;
struct dcn10_stream_encoder {struct dcn10_stream_encoder_mask const* se_mask; struct dcn10_stream_encoder_shift const* se_shift; struct dcn10_stream_enc_registers const* regs; TYPE_1__ base; } ;
struct dcn10_stream_enc_registers {int dummy; } ;
struct dc_context {int dummy; } ;
struct dc_bios {int dummy; } ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 int dcn10_str_enc_funcs ;

void dcn10_stream_encoder_construct(
 struct dcn10_stream_encoder *enc1,
 struct dc_context *ctx,
 struct dc_bios *bp,
 enum engine_id eng_id,
 const struct dcn10_stream_enc_registers *regs,
 const struct dcn10_stream_encoder_shift *se_shift,
 const struct dcn10_stream_encoder_mask *se_mask)
{
 enc1->base.funcs = &dcn10_str_enc_funcs;
 enc1->base.ctx = ctx;
 enc1->base.id = eng_id;
 enc1->base.bp = bp;
 enc1->regs = regs;
 enc1->se_shift = se_shift;
 enc1->se_mask = se_mask;
}
