
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dc_context {int dummy; } ;
struct dc_bios {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int kfree (struct stream_encoder*) ;
 struct stream_encoder* kzalloc (int,int ) ;
 scalar_t__ virtual_stream_encoder_construct (struct stream_encoder*,struct dc_context*,struct dc_bios*) ;

struct stream_encoder *virtual_stream_encoder_create(
 struct dc_context *ctx, struct dc_bios *bp)
{
 struct stream_encoder *enc = kzalloc(sizeof(*enc), GFP_KERNEL);

 if (!enc)
  return ((void*)0);

 if (virtual_stream_encoder_construct(enc, ctx, bp))
  return enc;

 BREAK_TO_DEBUGGER();
 kfree(enc);
 return ((void*)0);
}
