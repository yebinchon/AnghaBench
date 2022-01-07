
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef unsigned int u64 ;
struct scatterlist {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_15__ {struct scatterlist* sgl; } ;
struct TYPE_14__ {int type; int src_len; unsigned int final; int msg_bits; scalar_t__ first; int opad_len; int * opad; struct scatterlist* src; int ctx_len; struct scatterlist* ctx; } ;
struct TYPE_13__ {TYPE_4__ sha; } ;
struct TYPE_16__ {TYPE_3__ u; int engine; int entry; } ;
struct ccp_sha_req_ctx {int buf_count; unsigned int nbytes; unsigned int final; unsigned int hash_rem; unsigned int hash_cnt; int msg_bits; int type; TYPE_5__ data_sg; TYPE_7__ cmd; scalar_t__ first; struct scatterlist ctx_sg; struct scatterlist buf_sg; int buf; int ctx; struct scatterlist* src; } ;
struct TYPE_11__ {int opad_count; scalar_t__ key_len; int opad_sg; } ;
struct TYPE_12__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct TYPE_17__ {int flags; } ;
struct ahash_request {TYPE_9__ base; struct scatterlist* src; } ;
typedef int gfp_t ;


 int CCP_ENGINE_SHA ;





 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EINVAL ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SHA1_DIGEST_SIZE ;
 int SHA224_DIGEST_SIZE ;
 int SHA256_DIGEST_SIZE ;
 int SHA384_DIGEST_SIZE ;
 int SHA512_DIGEST_SIZE ;
 struct ccp_sha_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int ccp_crypto_enqueue_request (TYPE_9__*,TYPE_7__*) ;
 struct scatterlist* ccp_crypto_sg_table_add (TYPE_5__*,struct scatterlist*) ;
 struct ccp_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 int memset (TYPE_7__*,int ,int) ;
 int scatterwalk_map_and_copy (int ,struct scatterlist*,int ,unsigned int,int ) ;
 int sg_alloc_table (TYPE_5__*,unsigned int,int ) ;
 int sg_free_table (TYPE_5__*) ;
 int sg_init_one (struct scatterlist*,int ,int) ;
 int sg_mark_end (struct scatterlist*) ;
 int sg_nents (struct scatterlist*) ;

__attribute__((used)) static int ccp_do_sha_update(struct ahash_request *req, unsigned int nbytes,
        unsigned int final)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct ccp_ctx *ctx = crypto_ahash_ctx(tfm);
 struct ccp_sha_req_ctx *rctx = ahash_request_ctx(req);
 struct scatterlist *sg;
 unsigned int block_size =
  crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));
 unsigned int sg_count;
 gfp_t gfp;
 u64 len;
 int ret;

 len = (u64)rctx->buf_count + (u64)nbytes;

 if (!final && (len <= block_size)) {
  scatterwalk_map_and_copy(rctx->buf + rctx->buf_count, req->src,
      0, nbytes, 0);
  rctx->buf_count += nbytes;

  return 0;
 }

 rctx->src = req->src;
 rctx->nbytes = nbytes;

 rctx->final = final;
 rctx->hash_rem = final ? 0 : len & (block_size - 1);
 rctx->hash_cnt = len - rctx->hash_rem;
 if (!final && !rctx->hash_rem) {

  rctx->hash_cnt -= block_size;
  rctx->hash_rem = block_size;
 }


 sg_init_one(&rctx->ctx_sg, rctx->ctx, sizeof(rctx->ctx));

 sg = ((void*)0);
 if (rctx->buf_count && nbytes) {



  gfp = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
   GFP_KERNEL : GFP_ATOMIC;
  sg_count = sg_nents(req->src) + 1;
  ret = sg_alloc_table(&rctx->data_sg, sg_count, gfp);
  if (ret)
   return ret;

  sg_init_one(&rctx->buf_sg, rctx->buf, rctx->buf_count);
  sg = ccp_crypto_sg_table_add(&rctx->data_sg, &rctx->buf_sg);
  if (!sg) {
   ret = -EINVAL;
   goto e_free;
  }
  sg = ccp_crypto_sg_table_add(&rctx->data_sg, req->src);
  if (!sg) {
   ret = -EINVAL;
   goto e_free;
  }
  sg_mark_end(sg);

  sg = rctx->data_sg.sgl;
 } else if (rctx->buf_count) {
  sg_init_one(&rctx->buf_sg, rctx->buf, rctx->buf_count);

  sg = &rctx->buf_sg;
 } else if (nbytes) {
  sg = req->src;
 }

 rctx->msg_bits += (rctx->hash_cnt << 3);

 memset(&rctx->cmd, 0, sizeof(rctx->cmd));
 INIT_LIST_HEAD(&rctx->cmd.entry);
 rctx->cmd.engine = CCP_ENGINE_SHA;
 rctx->cmd.u.sha.type = rctx->type;
 rctx->cmd.u.sha.ctx = &rctx->ctx_sg;

 switch (rctx->type) {
 case 132:
  rctx->cmd.u.sha.ctx_len = SHA1_DIGEST_SIZE;
  break;
 case 131:
  rctx->cmd.u.sha.ctx_len = SHA224_DIGEST_SIZE;
  break;
 case 130:
  rctx->cmd.u.sha.ctx_len = SHA256_DIGEST_SIZE;
  break;
 case 129:
  rctx->cmd.u.sha.ctx_len = SHA384_DIGEST_SIZE;
  break;
 case 128:
  rctx->cmd.u.sha.ctx_len = SHA512_DIGEST_SIZE;
  break;
 default:

  break;
 }

 rctx->cmd.u.sha.src = sg;
 rctx->cmd.u.sha.src_len = rctx->hash_cnt;
 rctx->cmd.u.sha.opad = ctx->u.sha.key_len ?
  &ctx->u.sha.opad_sg : ((void*)0);
 rctx->cmd.u.sha.opad_len = ctx->u.sha.key_len ?
  ctx->u.sha.opad_count : 0;
 rctx->cmd.u.sha.first = rctx->first;
 rctx->cmd.u.sha.final = rctx->final;
 rctx->cmd.u.sha.msg_bits = rctx->msg_bits;

 rctx->first = 0;

 ret = ccp_crypto_enqueue_request(&req->base, &rctx->cmd);

 return ret;

e_free:
 sg_free_table(&rctx->data_sg);

 return ret;
}
