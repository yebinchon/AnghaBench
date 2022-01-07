
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce_stream_encoder_shift {int dummy; } ;
struct dce_stream_encoder_mask {int dummy; } ;
struct TYPE_2__ {int id; struct dc_bios* bp; struct dc_context* ctx; int * funcs; } ;
struct dce110_stream_encoder {struct dce_stream_encoder_mask const* se_mask; struct dce_stream_encoder_shift const* se_shift; struct dce110_stream_enc_registers const* regs; TYPE_1__ base; } ;
struct dce110_stream_enc_registers {int dummy; } ;
struct dc_context {int dummy; } ;
struct dc_bios {int dummy; } ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 int dce110_str_enc_funcs ;

void dce110_stream_encoder_construct(
 struct dce110_stream_encoder *enc110,
 struct dc_context *ctx,
 struct dc_bios *bp,
 enum engine_id eng_id,
 const struct dce110_stream_enc_registers *regs,
 const struct dce_stream_encoder_shift *se_shift,
 const struct dce_stream_encoder_mask *se_mask)
{
 enc110->base.funcs = &dce110_str_enc_funcs;
 enc110->base.ctx = ctx;
 enc110->base.id = eng_id;
 enc110->base.bp = bp;
 enc110->regs = regs;
 enc110->se_shift = se_shift;
 enc110->se_mask = se_mask;
}
