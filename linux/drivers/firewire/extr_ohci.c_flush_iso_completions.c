
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* sc ) (TYPE_2__*,int ,scalar_t__,int ,int ) ;} ;
struct TYPE_4__ {int callback_data; TYPE_1__ callback; } ;
struct iso_context {scalar_t__ header_length; TYPE_2__ base; int header; int last_timestamp; } ;


 int stub1 (TYPE_2__*,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void flush_iso_completions(struct iso_context *ctx)
{
 ctx->base.callback.sc(&ctx->base, ctx->last_timestamp,
         ctx->header_length, ctx->header,
         ctx->base.callback_data);
 ctx->header_length = 0;
}
