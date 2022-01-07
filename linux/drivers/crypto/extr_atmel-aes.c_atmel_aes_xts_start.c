
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keylen; } ;
struct atmel_aes_xts_ctx {TYPE_1__ base; int key2; } ;
struct atmel_aes_reqctx {int dummy; } ;
struct atmel_aes_dev {unsigned long flags; int areq; int ctx; } ;
struct ablkcipher_request {int info; } ;


 int AES_FLAGS_ECB ;
 int AES_FLAGS_ENCRYPT ;
 unsigned long AES_FLAGS_MODE_MASK ;
 int AES_IDATAR (int ) ;
 struct ablkcipher_request* ablkcipher_request_cast (int ) ;
 struct atmel_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int atmel_aes_complete (struct atmel_aes_dev*,int) ;
 int atmel_aes_hw_init (struct atmel_aes_dev*) ;
 int atmel_aes_set_mode (struct atmel_aes_dev*,struct atmel_aes_reqctx*) ;
 int atmel_aes_wait_for_data_ready (struct atmel_aes_dev*,int ) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,int ) ;
 int atmel_aes_write_ctrl_key (struct atmel_aes_dev*,int,int *,int ,int ) ;
 struct atmel_aes_xts_ctx* atmel_aes_xts_ctx_cast (int ) ;
 int atmel_aes_xts_process_data ;

__attribute__((used)) static int atmel_aes_xts_start(struct atmel_aes_dev *dd)
{
 struct atmel_aes_xts_ctx *ctx = atmel_aes_xts_ctx_cast(dd->ctx);
 struct ablkcipher_request *req = ablkcipher_request_cast(dd->areq);
 struct atmel_aes_reqctx *rctx = ablkcipher_request_ctx(req);
 unsigned long flags;
 int err;

 atmel_aes_set_mode(dd, rctx);

 err = atmel_aes_hw_init(dd);
 if (err)
  return atmel_aes_complete(dd, err);


 flags = dd->flags;
 dd->flags &= ~AES_FLAGS_MODE_MASK;
 dd->flags |= (AES_FLAGS_ECB | AES_FLAGS_ENCRYPT);
 atmel_aes_write_ctrl_key(dd, 0, ((void*)0),
     ctx->key2, ctx->base.keylen);
 dd->flags = flags;

 atmel_aes_write_block(dd, AES_IDATAR(0), req->info);
 return atmel_aes_wait_for_data_ready(dd, atmel_aes_xts_process_data);
}
