
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct crypto_async_request {struct crypto_tfm* tfm; } ;
struct chcr_context {int dev; } ;
struct TYPE_3__ {int complete; } ;
struct adapter {TYPE_1__ chcr_stats; } ;
struct TYPE_4__ {int cra_flags; } ;





 int CRYPTO_ALG_TYPE_MASK ;
 int ablkcipher_request_cast (struct crypto_async_request*) ;
 int aead_request_cast (struct crypto_async_request*) ;
 int ahash_request_cast (struct crypto_async_request*) ;
 int atomic_inc (int *) ;
 int chcr_handle_aead_resp (int ,unsigned char*,int) ;
 int chcr_handle_ahash_resp (int ,unsigned char*,int) ;
 int chcr_handle_cipher_resp (int ,unsigned char*,int) ;
 struct chcr_context* crypto_tfm_ctx (struct crypto_tfm*) ;
 struct adapter* padap (int ) ;

int chcr_handle_resp(struct crypto_async_request *req, unsigned char *input,
    int err)
{
 struct crypto_tfm *tfm = req->tfm;
 struct chcr_context *ctx = crypto_tfm_ctx(tfm);
 struct adapter *adap = padap(ctx->dev);

 switch (tfm->__crt_alg->cra_flags & CRYPTO_ALG_TYPE_MASK) {
 case 129:
  err = chcr_handle_aead_resp(aead_request_cast(req), input, err);
  break;

 case 130:
   chcr_handle_cipher_resp(ablkcipher_request_cast(req),
            input, err);
  break;
 case 128:
  chcr_handle_ahash_resp(ahash_request_cast(req), input, err);
  }
 atomic_inc(&adap->chcr_stats.complete);
 return err;
}
