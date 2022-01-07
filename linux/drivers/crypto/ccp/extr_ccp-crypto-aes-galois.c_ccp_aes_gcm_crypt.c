
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_7__ {scalar_t__ mode; scalar_t__ key_len; int key_sg; int type; } ;
struct TYPE_8__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct TYPE_9__ {scalar_t__ mode; int action; unsigned int iv_len; int dst; int aad_len; int src_len; int src; struct scatterlist* iv; scalar_t__ key_len; int * key; int type; int authsize; } ;
struct TYPE_10__ {TYPE_3__ aes; } ;
struct TYPE_11__ {TYPE_4__ u; int engine; int entry; } ;
struct ccp_aes_req_ctx {int* iv; TYPE_5__ cmd; struct scatterlist iv_sg; } ;
struct aead_request {int base; int dst; int assoclen; int cryptlen; int src; int iv; } ;


 int AES_BLOCK_SIZE ;
 scalar_t__ CCP_AES_MODE_GCM ;
 int CCP_ENGINE_AES ;
 int EINVAL ;
 int GCM_AES_IV_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 struct ccp_aes_req_ctx* aead_request_ctx (struct aead_request*) ;
 int ccp_crypto_enqueue_request (int *,TYPE_5__*) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct ccp_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int memcpy (int*,int ,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int sg_init_one (struct scatterlist*,int*,unsigned int) ;

__attribute__((used)) static int ccp_aes_gcm_crypt(struct aead_request *req, bool encrypt)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct ccp_ctx *ctx = crypto_aead_ctx(tfm);
 struct ccp_aes_req_ctx *rctx = aead_request_ctx(req);
 struct scatterlist *iv_sg = ((void*)0);
 unsigned int iv_len = 0;
 int i;
 int ret = 0;

 if (!ctx->u.aes.key_len)
  return -EINVAL;

 if (ctx->u.aes.mode != CCP_AES_MODE_GCM)
  return -EINVAL;

 if (!req->iv)
  return -EINVAL;
 memcpy(rctx->iv, req->iv, GCM_AES_IV_SIZE);
 for (i = 0; i < 3; i++)
  rctx->iv[i + GCM_AES_IV_SIZE] = 0;
 rctx->iv[AES_BLOCK_SIZE - 1] = 1;


 iv_sg = &rctx->iv_sg;
 iv_len = AES_BLOCK_SIZE;
 sg_init_one(iv_sg, rctx->iv, iv_len);


 memset(&rctx->cmd, 0, sizeof(rctx->cmd));
 INIT_LIST_HEAD(&rctx->cmd.entry);
 rctx->cmd.engine = CCP_ENGINE_AES;
 rctx->cmd.u.aes.authsize = crypto_aead_authsize(tfm);
 rctx->cmd.u.aes.type = ctx->u.aes.type;
 rctx->cmd.u.aes.mode = ctx->u.aes.mode;
 rctx->cmd.u.aes.action = encrypt;
 rctx->cmd.u.aes.key = &ctx->u.aes.key_sg;
 rctx->cmd.u.aes.key_len = ctx->u.aes.key_len;
 rctx->cmd.u.aes.iv = iv_sg;
 rctx->cmd.u.aes.iv_len = iv_len;
 rctx->cmd.u.aes.src = req->src;
 rctx->cmd.u.aes.src_len = req->cryptlen;
 rctx->cmd.u.aes.aad_len = req->assoclen;


 rctx->cmd.u.aes.dst = req->dst;

 ret = ccp_crypto_enqueue_request(&req->base, &rctx->cmd);

 return ret;
}
