
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct skcipher_request {size_t iv; int cryptlen; int dst; int src; TYPE_1__ base; } ;
struct crypto_skcipher {int dummy; } ;
struct artpec6_cryptotfm_context {int fallback; int key_length; int aes_key; } ;
typedef int __be32 ;


 unsigned int AES_BLOCK_SIZE ;
 unsigned int ALIGN (int ,unsigned int) ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 int artpec6_crypto_decrypt (struct skcipher_request*) ;
 int artpec6_crypto_encrypt (struct skcipher_request*) ;
 unsigned int be32_to_cpup (int *) ;
 struct artpec6_cryptotfm_context* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 size_t crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int crypto_sync_skcipher_setkey (int ,int ,int ) ;
 int pr_debug (char*,unsigned int,unsigned int) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,int ,size_t) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;
 int subreq ;

__attribute__((used)) static int
artpec6_crypto_ctr_crypt(struct skcipher_request *req, bool encrypt)
{
 struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
 struct artpec6_cryptotfm_context *ctx = crypto_skcipher_ctx(cipher);
 size_t iv_len = crypto_skcipher_ivsize(cipher);
 unsigned int counter = be32_to_cpup((__be32 *)
         (req->iv + iv_len - 4));
 unsigned int nblks = ALIGN(req->cryptlen, AES_BLOCK_SIZE) /
        AES_BLOCK_SIZE;







 if (counter + nblks < counter) {
  int ret;

  pr_debug("counter %x will overflow (nblks %u), falling back\n",
    counter, counter + nblks);

  ret = crypto_sync_skcipher_setkey(ctx->fallback, ctx->aes_key,
        ctx->key_length);
  if (ret)
   return ret;

  {
   SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->fallback);

   skcipher_request_set_sync_tfm(subreq, ctx->fallback);
   skcipher_request_set_callback(subreq, req->base.flags,
            ((void*)0), ((void*)0));
   skcipher_request_set_crypt(subreq, req->src, req->dst,
         req->cryptlen, req->iv);
   ret = encrypt ? crypto_skcipher_encrypt(subreq)
          : crypto_skcipher_decrypt(subreq);
   skcipher_request_zero(subreq);
  }
  return ret;
 }

 return encrypt ? artpec6_crypto_encrypt(req)
         : artpec6_crypto_decrypt(req);
}
