
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_8__ {scalar_t__ mode; scalar_t__ key_len; int key_sg; int type; } ;
struct TYPE_9__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct TYPE_10__ {scalar_t__ mode; unsigned int iv_len; int src_len; int dst; int src; struct scatterlist* iv; scalar_t__ key_len; int * key; int action; int type; } ;
struct TYPE_11__ {TYPE_3__ aes; } ;
struct TYPE_12__ {TYPE_4__ u; int engine; int entry; } ;
struct ccp_aes_req_ctx {TYPE_5__ cmd; int iv; struct scatterlist iv_sg; } ;
struct TYPE_13__ {int tfm; } ;
struct ablkcipher_request {int nbytes; TYPE_6__ base; int dst; int src; int info; } ;


 int AES_BLOCK_SIZE ;
 int CCP_AES_ACTION_DECRYPT ;
 int CCP_AES_ACTION_ENCRYPT ;
 scalar_t__ CCP_AES_MODE_CBC ;
 scalar_t__ CCP_AES_MODE_ECB ;
 int CCP_ENGINE_AES ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 struct ccp_aes_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int ccp_crypto_enqueue_request (TYPE_6__*,TYPE_5__*) ;
 struct ccp_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int sg_init_one (struct scatterlist*,int ,unsigned int) ;

__attribute__((used)) static int ccp_aes_crypt(struct ablkcipher_request *req, bool encrypt)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
 struct scatterlist *iv_sg = ((void*)0);
 unsigned int iv_len = 0;
 int ret;

 if (!ctx->u.aes.key_len)
  return -EINVAL;

 if (((ctx->u.aes.mode == CCP_AES_MODE_ECB) ||
      (ctx->u.aes.mode == CCP_AES_MODE_CBC)) &&
     (req->nbytes & (AES_BLOCK_SIZE - 1)))
  return -EINVAL;

 if (ctx->u.aes.mode != CCP_AES_MODE_ECB) {
  if (!req->info)
   return -EINVAL;

  memcpy(rctx->iv, req->info, AES_BLOCK_SIZE);
  iv_sg = &rctx->iv_sg;
  iv_len = AES_BLOCK_SIZE;
  sg_init_one(iv_sg, rctx->iv, iv_len);
 }

 memset(&rctx->cmd, 0, sizeof(rctx->cmd));
 INIT_LIST_HEAD(&rctx->cmd.entry);
 rctx->cmd.engine = CCP_ENGINE_AES;
 rctx->cmd.u.aes.type = ctx->u.aes.type;
 rctx->cmd.u.aes.mode = ctx->u.aes.mode;
 rctx->cmd.u.aes.action =
  (encrypt) ? CCP_AES_ACTION_ENCRYPT : CCP_AES_ACTION_DECRYPT;
 rctx->cmd.u.aes.key = &ctx->u.aes.key_sg;
 rctx->cmd.u.aes.key_len = ctx->u.aes.key_len;
 rctx->cmd.u.aes.iv = iv_sg;
 rctx->cmd.u.aes.iv_len = iv_len;
 rctx->cmd.u.aes.src = req->src;
 rctx->cmd.u.aes.src_len = req->nbytes;
 rctx->cmd.u.aes.dst = req->dst;

 ret = ccp_crypto_enqueue_request(&req->base, &rctx->cmd);

 return ret;
}
