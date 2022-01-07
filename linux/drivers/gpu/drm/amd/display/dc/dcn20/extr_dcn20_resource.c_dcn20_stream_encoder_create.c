
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {struct stream_encoder base; } ;
struct TYPE_2__ {int hw_internal_rev; } ;
struct dc_context {int dc_bios; TYPE_1__ asic_id; } ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 scalar_t__ ASICREV_IS_NAVI14_M (int ) ;
 int ENGINE_ID_DIGD ;
 int GFP_KERNEL ;
 int dcn20_stream_encoder_construct (struct dcn10_stream_encoder*,struct dc_context*,int ,int,int *,int *,int *) ;
 struct dcn10_stream_encoder* kzalloc (int,int ) ;
 int se_mask ;
 int se_shift ;
 int * stream_enc_regs ;

struct stream_encoder *dcn20_stream_encoder_create(
 enum engine_id eng_id,
 struct dc_context *ctx)
{
 struct dcn10_stream_encoder *enc1 =
  kzalloc(sizeof(struct dcn10_stream_encoder), GFP_KERNEL);

 if (!enc1)
  return ((void*)0);

 if (ASICREV_IS_NAVI14_M(ctx->asic_id.hw_internal_rev)) {
  if (eng_id >= ENGINE_ID_DIGD)
   eng_id++;
 }

 dcn20_stream_encoder_construct(enc1, ctx, ctx->dc_bios, eng_id,
     &stream_enc_regs[eng_id],
     &se_shift, &se_mask);

 return &enc1->base;
}
