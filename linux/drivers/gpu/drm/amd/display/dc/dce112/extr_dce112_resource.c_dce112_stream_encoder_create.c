
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {struct stream_encoder base; } ;
struct dc_context {int dc_bios; } ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 int GFP_KERNEL ;
 int dce110_stream_encoder_construct (struct dce110_stream_encoder*,struct dc_context*,int ,int,int *,int *,int *) ;
 struct dce110_stream_encoder* kzalloc (int,int ) ;
 int se_mask ;
 int se_shift ;
 int * stream_enc_regs ;

__attribute__((used)) static struct stream_encoder *dce112_stream_encoder_create(
 enum engine_id eng_id,
 struct dc_context *ctx)
{
 struct dce110_stream_encoder *enc110 =
  kzalloc(sizeof(struct dce110_stream_encoder), GFP_KERNEL);

 if (!enc110)
  return ((void*)0);

 dce110_stream_encoder_construct(enc110, ctx, ctx->dc_bios, eng_id,
     &stream_enc_regs[eng_id],
     &se_shift, &se_mask);
 return &enc110->base;
}
