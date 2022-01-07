
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct crypto_aead {int dummy; } ;
struct atmel_aes_gcm_ctx {scalar_t__ textlen; } ;
struct atmel_aes_dev {int flags; int areq; int ctx; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; } ;


 int AES_FLAGS_GTAGEN ;
 struct aead_request* aead_request_cast (int ) ;
 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_gcm_length ;
 int atmel_aes_is_encrypt (struct atmel_aes_dev*) ;
 int atmel_aes_wait_for_data_ready (struct atmel_aes_dev*,int ) ;
 int atmel_aes_write_ctrl (struct atmel_aes_dev*,int,int *) ;
 scalar_t__ crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int atmel_aes_gcm_process(struct atmel_aes_dev *dd)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 struct aead_request *req = aead_request_cast(dd->areq);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 bool enc = atmel_aes_is_encrypt(dd);
 u32 authsize;


 authsize = crypto_aead_authsize(tfm);
 ctx->textlen = req->cryptlen - (enc ? 0 : authsize);





 if (likely(req->assoclen != 0 || ctx->textlen != 0))
  dd->flags |= AES_FLAGS_GTAGEN;

 atmel_aes_write_ctrl(dd, 0, ((void*)0));
 return atmel_aes_wait_for_data_ready(dd, atmel_aes_gcm_length);
}
