
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct crypto_aead {int dummy; } ;
struct atmel_aes_gcm_ctx {scalar_t__ textlen; scalar_t__* tag; } ;
struct atmel_aes_dev {int flags; int areq; int ctx; } ;
struct aead_request {int src; int dst; scalar_t__ assoclen; } ;


 int AES_FLAGS_GTAGEN ;
 int AES_ODATAR (int ) ;
 int AES_TAGR (int ) ;
 int EBADMSG ;
 struct aead_request* aead_request_cast (int ) ;
 int atmel_aes_complete (struct atmel_aes_dev*,int) ;
 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_is_encrypt (struct atmel_aes_dev*) ;
 int atmel_aes_read_block (struct atmel_aes_dev*,int ,scalar_t__*) ;
 scalar_t__ crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 scalar_t__ crypto_memneq (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ likely (int) ;
 int scatterwalk_map_and_copy (scalar_t__*,int ,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int atmel_aes_gcm_finalize(struct atmel_aes_dev *dd)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 struct aead_request *req = aead_request_cast(dd->areq);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 bool enc = atmel_aes_is_encrypt(dd);
 u32 offset, authsize, itag[4], *otag = ctx->tag;
 int err;


 if (likely(dd->flags & AES_FLAGS_GTAGEN))
  atmel_aes_read_block(dd, AES_TAGR(0), ctx->tag);
 else
  atmel_aes_read_block(dd, AES_ODATAR(0), ctx->tag);

 offset = req->assoclen + ctx->textlen;
 authsize = crypto_aead_authsize(tfm);
 if (enc) {
  scatterwalk_map_and_copy(otag, req->dst, offset, authsize, 1);
  err = 0;
 } else {
  scatterwalk_map_and_copy(itag, req->src, offset, authsize, 0);
  err = crypto_memneq(itag, otag, authsize) ? -EBADMSG : 0;
 }

 return atmel_aes_complete(dd, err);
}
