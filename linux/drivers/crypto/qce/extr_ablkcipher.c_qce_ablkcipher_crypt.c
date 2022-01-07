
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qce_cipher_reqctx {int flags; } ;
struct qce_cipher_ctx {scalar_t__ enc_keylen; int fallback; } ;
struct qce_alg_template {TYPE_1__* qce; int alg_flags; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct ablkcipher_request {TYPE_2__ base; int info; int nbytes; int dst; int src; } ;
struct TYPE_3__ {int (* async_req_enqueue ) (TYPE_1__*,TYPE_2__*) ;} ;


 scalar_t__ AES_KEYSIZE_128 ;
 scalar_t__ AES_KEYSIZE_256 ;
 scalar_t__ IS_AES (int ) ;
 int QCE_DECRYPT ;
 int QCE_ENCRYPT ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 struct qce_cipher_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (int ) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 struct qce_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,int ,int ) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int subreq ;
 struct qce_alg_template* to_cipher_tmpl (struct crypto_tfm*) ;

__attribute__((used)) static int qce_ablkcipher_crypt(struct ablkcipher_request *req, int encrypt)
{
 struct crypto_tfm *tfm =
   crypto_ablkcipher_tfm(crypto_ablkcipher_reqtfm(req));
 struct qce_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
 struct qce_cipher_reqctx *rctx = ablkcipher_request_ctx(req);
 struct qce_alg_template *tmpl = to_cipher_tmpl(tfm);
 int ret;

 rctx->flags = tmpl->alg_flags;
 rctx->flags |= encrypt ? QCE_ENCRYPT : QCE_DECRYPT;

 if (IS_AES(rctx->flags) && ctx->enc_keylen != AES_KEYSIZE_128 &&
     ctx->enc_keylen != AES_KEYSIZE_256) {
  SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->fallback);

  skcipher_request_set_sync_tfm(subreq, ctx->fallback);
  skcipher_request_set_callback(subreq, req->base.flags,
           ((void*)0), ((void*)0));
  skcipher_request_set_crypt(subreq, req->src, req->dst,
        req->nbytes, req->info);
  ret = encrypt ? crypto_skcipher_encrypt(subreq) :
    crypto_skcipher_decrypt(subreq);
  skcipher_request_zero(subreq);
  return ret;
 }

 return tmpl->qce->async_req_enqueue(tmpl->qce, &req->base);
}
