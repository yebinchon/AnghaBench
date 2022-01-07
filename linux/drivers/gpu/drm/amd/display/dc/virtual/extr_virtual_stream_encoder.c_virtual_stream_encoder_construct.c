
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {struct dc_bios* bp; int id; struct dc_context* ctx; int * funcs; } ;
struct dc_context {int dummy; } ;
struct dc_bios {int dummy; } ;


 int ENGINE_ID_VIRTUAL ;
 int virtual_str_enc_funcs ;

bool virtual_stream_encoder_construct(
 struct stream_encoder *enc,
 struct dc_context *ctx,
 struct dc_bios *bp)
{
 if (!enc)
  return 0;
 if (!bp)
  return 0;

 enc->funcs = &virtual_str_enc_funcs;
 enc->ctx = ctx;
 enc->id = ENGINE_ID_VIRTUAL;
 enc->bp = bp;

 return 1;
}
