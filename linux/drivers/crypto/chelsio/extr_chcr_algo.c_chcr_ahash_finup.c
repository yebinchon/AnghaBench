
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


typedef scalar_t__ u8 ;
struct TYPE_11__ {TYPE_3__* pdev; int * ports; } ;
struct uld_ctx {TYPE_4__ lldi; } ;
struct sk_buff {int dev; } ;
struct TYPE_13__ {int result_size; } ;
struct hash_wr_param {int kctx_len; int opad_needed; scalar_t__ sg_len; int last; int more; scalar_t__ scmd1; scalar_t__ bfr_len; int hash_size; TYPE_6__ alg_prm; } ;
struct crypto_ahash {int dummy; } ;
struct chcr_dev {int dummy; } ;
struct TYPE_9__ {int result; int processed; int srcsg; } ;
struct chcr_ahash_req_ctx {scalar_t__ reqlen; scalar_t__ data_len; TYPE_2__ hctx_wr; int reqbfr; } ;
struct TYPE_8__ {int flags; } ;
struct ahash_request {scalar_t__ nbytes; int src; TYPE_1__ base; } ;
struct TYPE_12__ {int tx_qidx; struct chcr_dev* dev; } ;
struct TYPE_10__ {int dev; } ;


 int CPL_PRIORITY_DATA ;
 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EBUSY ;
 int EINPROGRESS ;
 int ENOMEM ;
 int ENOSPC ;
 int ENXIO ;
 int HASH_SPACE_LEFT (int) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct uld_ctx* ULD_CTX (TYPE_5__*) ;
 struct chcr_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int chcr_dec_wrcount (struct chcr_dev*) ;
 int chcr_hash_dma_map (int *,struct ahash_request*) ;
 int chcr_hash_dma_unmap (int *,struct ahash_request*) ;
 scalar_t__ chcr_hash_ent_in_wr (int ,int,int ,int ) ;
 int chcr_inc_wrcount (struct chcr_dev*) ;
 int chcr_init_hctx_per_wr (struct chcr_ahash_req_ctx*) ;
 int chcr_send_wr (struct sk_buff*) ;
 struct sk_buff* create_hash_wr (struct ahash_request*,struct hash_wr_param*) ;
 int create_last_hash_block (int ,scalar_t__,scalar_t__) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 scalar_t__ crypto_tfm_alg_blocksize (int ) ;
 int cxgb4_is_crypto_q_full (int ,int ) ;
 int get_alg_config (TYPE_6__*,int ) ;
 TYPE_5__* h_ctx (struct crypto_ahash*) ;
 scalar_t__ is_hmac (int ) ;
 scalar_t__ rounddown (scalar_t__,scalar_t__) ;
 int roundup (int ,int) ;
 int set_wr_txq (struct sk_buff*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int chcr_ahash_finup(struct ahash_request *req)
{
 struct chcr_ahash_req_ctx *req_ctx = ahash_request_ctx(req);
 struct crypto_ahash *rtfm = crypto_ahash_reqtfm(req);
 struct chcr_dev *dev = h_ctx(rtfm)->dev;
 struct uld_ctx *u_ctx = ((void*)0);
 struct sk_buff *skb;
 struct hash_wr_param params;
 u8 bs;
 int error, isfull = 0;

 bs = crypto_tfm_alg_blocksize(crypto_ahash_tfm(rtfm));
 u_ctx = ULD_CTX(h_ctx(rtfm));
 error = chcr_inc_wrcount(dev);
 if (error)
  return -ENXIO;

 if (unlikely(cxgb4_is_crypto_q_full(u_ctx->lldi.ports[0],
         h_ctx(rtfm)->tx_qidx))) {
  isfull = 1;
  if (!(req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {
   error = -ENOSPC;
   goto err;
  }
 }
 chcr_init_hctx_per_wr(req_ctx);
 error = chcr_hash_dma_map(&u_ctx->lldi.pdev->dev, req);
 if (error) {
  error = -ENOMEM;
  goto err;
 }

 get_alg_config(&params.alg_prm, crypto_ahash_digestsize(rtfm));
 params.kctx_len = roundup(params.alg_prm.result_size, 16);
 if (is_hmac(crypto_ahash_tfm(rtfm))) {
  params.kctx_len *= 2;
  params.opad_needed = 1;
 } else {
  params.opad_needed = 0;
 }

 params.sg_len = chcr_hash_ent_in_wr(req->src, !!req_ctx->reqlen,
        HASH_SPACE_LEFT(params.kctx_len), 0);
 if (params.sg_len < req->nbytes) {
  if (is_hmac(crypto_ahash_tfm(rtfm))) {
   params.kctx_len /= 2;
   params.opad_needed = 0;
  }
  params.last = 0;
  params.more = 1;
  params.sg_len = rounddown(params.sg_len + req_ctx->reqlen, bs)
     - req_ctx->reqlen;
  params.hash_size = params.alg_prm.result_size;
  params.scmd1 = 0;
 } else {
  params.last = 1;
  params.more = 0;
  params.sg_len = req->nbytes;
  params.hash_size = crypto_ahash_digestsize(rtfm);
  params.scmd1 = req_ctx->data_len + req_ctx->reqlen +
    params.sg_len;
 }
 params.bfr_len = req_ctx->reqlen;
 req_ctx->data_len += params.bfr_len + params.sg_len;
 req_ctx->hctx_wr.result = 1;
 req_ctx->hctx_wr.srcsg = req->src;
 if ((req_ctx->reqlen + req->nbytes) == 0) {
  create_last_hash_block(req_ctx->reqbfr, bs, req_ctx->data_len);
  params.last = 0;
  params.more = 1;
  params.scmd1 = 0;
  params.bfr_len = bs;
 }
 skb = create_hash_wr(req, &params);
 if (IS_ERR(skb)) {
  error = PTR_ERR(skb);
  goto unmap;
 }
 req_ctx->reqlen = 0;
 req_ctx->hctx_wr.processed += params.sg_len;
 skb->dev = u_ctx->lldi.ports[0];
 set_wr_txq(skb, CPL_PRIORITY_DATA, h_ctx(rtfm)->tx_qidx);
 chcr_send_wr(skb);

 return isfull ? -EBUSY : -EINPROGRESS;
unmap:
 chcr_hash_dma_unmap(&u_ctx->lldi.pdev->dev, req);
err:
 chcr_dec_wrcount(dev);
 return error;
}
