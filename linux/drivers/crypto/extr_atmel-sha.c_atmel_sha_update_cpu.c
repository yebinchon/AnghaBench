
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int bufcnt; int buffer; } ;
struct atmel_sha_dev {int req; } ;


 struct atmel_sha_reqctx* ahash_request_ctx (int ) ;
 int atmel_sha_append_sg (struct atmel_sha_reqctx*) ;
 int atmel_sha_fill_padding (struct atmel_sha_reqctx*,int ) ;
 int atmel_sha_xmit_cpu (struct atmel_sha_dev*,int ,int,int) ;

__attribute__((used)) static int atmel_sha_update_cpu(struct atmel_sha_dev *dd)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(dd->req);
 int bufcnt;

 atmel_sha_append_sg(ctx);
 atmel_sha_fill_padding(ctx, 0);
 bufcnt = ctx->bufcnt;
 ctx->bufcnt = 0;

 return atmel_sha_xmit_cpu(dd, ctx->buffer, bufcnt, 1);
}
