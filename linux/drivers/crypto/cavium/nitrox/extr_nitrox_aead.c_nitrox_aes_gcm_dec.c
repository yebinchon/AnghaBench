
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct se_crypto_request {int dummy; } ;
struct TYPE_8__ {int ctx_handle; struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {int ndev; TYPE_4__ u; } ;
struct TYPE_5__ {struct se_crypto_request creq; } ;
struct nitrox_aead_rctx {int ctrl_arg; int dst; int src; int ctx_handle; int flags; scalar_t__ ivsize; int * iv; scalar_t__ srclen; scalar_t__ dstlen; scalar_t__ assoclen; scalar_t__ cryptlen; TYPE_1__ nkreq; } ;
struct TYPE_6__ {int iv; } ;
struct flexi_crypto_context {TYPE_2__ crypto; } ;
struct crypto_aead {scalar_t__ authsize; } ;
struct TYPE_7__ {int flags; } ;
struct aead_request {int dst; int src; TYPE_3__ base; int * iv; scalar_t__ assoclen; scalar_t__ cryptlen; } ;


 int DECRYPT ;
 scalar_t__ GCM_AES_IV_SIZE ;
 size_t GCM_AES_SALT_SIZE ;
 struct nitrox_aead_rctx* aead_request_ctx (struct aead_request*) ;
 struct nitrox_crypto_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int memcpy (int ,int *,size_t) ;
 int nitrox_aead_callback ;
 int nitrox_process_se_request (int ,struct se_crypto_request*,int ,struct aead_request*) ;
 int nitrox_set_creq (struct nitrox_aead_rctx*) ;

__attribute__((used)) static int nitrox_aes_gcm_dec(struct aead_request *areq)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(areq);
 struct nitrox_crypto_ctx *nctx = crypto_aead_ctx(aead);
 struct nitrox_aead_rctx *rctx = aead_request_ctx(areq);
 struct se_crypto_request *creq = &rctx->nkreq.creq;
 struct flexi_crypto_context *fctx = nctx->u.fctx;
 int ret;

 memcpy(fctx->crypto.iv, areq->iv, GCM_AES_SALT_SIZE);

 rctx->cryptlen = areq->cryptlen - aead->authsize;
 rctx->assoclen = areq->assoclen;
 rctx->srclen = areq->cryptlen + areq->assoclen;
 rctx->dstlen = rctx->srclen - aead->authsize;
 rctx->iv = &areq->iv[GCM_AES_SALT_SIZE];
 rctx->ivsize = GCM_AES_IV_SIZE - GCM_AES_SALT_SIZE;
 rctx->flags = areq->base.flags;
 rctx->ctx_handle = nctx->u.ctx_handle;
 rctx->src = areq->src;
 rctx->dst = areq->dst;
 rctx->ctrl_arg = DECRYPT;
 ret = nitrox_set_creq(rctx);
 if (ret)
  return ret;


 return nitrox_process_se_request(nctx->ndev, creq, nitrox_aead_callback,
      areq);
}
