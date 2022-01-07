
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct atmel_aes_gcm_ctx {int textlen; int ghash; } ;
struct atmel_aes_dev {int flags; int (* resume ) (struct atmel_aes_dev*) ;int * buf; int areq; int ctx; } ;
struct aead_request {int assoclen; } ;


 int AES_BLOCK_SIZE ;
 int AES_FLAGS_GTAGEN ;
 int AES_GHASHR (int ) ;
 int AES_IER ;
 int AES_INT_TAGRDY ;
 int AES_ISR ;
 int EINPROGRESS ;
 struct aead_request* aead_request_cast (int ) ;
 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_gcm_finalize (struct atmel_aes_dev*) ;
 int atmel_aes_gcm_ghash (struct atmel_aes_dev*,int const*,int ,int ,int ,int ) ;
 int atmel_aes_gcm_tag ;
 int atmel_aes_read (struct atmel_aes_dev*,int ) ;
 int atmel_aes_read_block (struct atmel_aes_dev*,int ,int ) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int) ;
 int cpu_to_be64 (int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int atmel_aes_gcm_tag_init(struct atmel_aes_dev *dd)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 struct aead_request *req = aead_request_cast(dd->areq);
 u64 *data = dd->buf;

 if (likely(dd->flags & AES_FLAGS_GTAGEN)) {
  if (!(atmel_aes_read(dd, AES_ISR) & AES_INT_TAGRDY)) {
   dd->resume = atmel_aes_gcm_tag_init;
   atmel_aes_write(dd, AES_IER, AES_INT_TAGRDY);
   return -EINPROGRESS;
  }

  return atmel_aes_gcm_finalize(dd);
 }


 atmel_aes_read_block(dd, AES_GHASHR(0), ctx->ghash);

 data[0] = cpu_to_be64(req->assoclen * 8);
 data[1] = cpu_to_be64(ctx->textlen * 8);

 return atmel_aes_gcm_ghash(dd, (const u32 *)data, AES_BLOCK_SIZE,
       ctx->ghash, ctx->ghash, atmel_aes_gcm_tag);
}
