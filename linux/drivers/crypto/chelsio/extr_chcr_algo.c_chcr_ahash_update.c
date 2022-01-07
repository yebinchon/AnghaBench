
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


typedef unsigned int u8 ;
struct TYPE_11__ {TYPE_3__* pdev; int * ports; } ;
struct uld_ctx {TYPE_4__ lldi; } ;
struct sk_buff {int dev; } ;
struct TYPE_13__ {int result_size; } ;
struct hash_wr_param {unsigned int sg_len; int more; unsigned int bfr_len; TYPE_6__ alg_prm; int hash_size; scalar_t__ scmd1; scalar_t__ last; scalar_t__ opad_needed; int kctx_len; } ;
struct crypto_ahash {int dummy; } ;
struct chcr_dev {int dummy; } ;
struct TYPE_9__ {unsigned int processed; int srcsg; } ;
struct chcr_ahash_req_ctx {unsigned int reqlen; unsigned int data_len; scalar_t__ reqbfr; int skbfr; TYPE_2__ hctx_wr; } ;
struct TYPE_8__ {int flags; } ;
struct ahash_request {unsigned int nbytes; int src; TYPE_1__ base; } ;
struct TYPE_12__ {int tx_qidx; struct chcr_dev* dev; } ;
struct TYPE_10__ {int dev; } ;


 int CPL_PRIORITY_DATA ;
 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EBUSY ;
 int EINPROGRESS ;
 int ENOMEM ;
 int ENOSPC ;
 int ENXIO ;
 int HASH_SPACE_LEFT (int ) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct uld_ctx* ULD_CTX (TYPE_5__*) ;
 struct chcr_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int chcr_dec_wrcount (struct chcr_dev*) ;
 int chcr_hash_dma_map (int *,struct ahash_request*) ;
 int chcr_hash_dma_unmap (int *,struct ahash_request*) ;
 unsigned int chcr_hash_ent_in_wr (int ,int,int ,int ) ;
 int chcr_inc_wrcount (struct chcr_dev*) ;
 int chcr_init_hctx_per_wr (struct chcr_ahash_req_ctx*) ;
 int chcr_send_wr (struct sk_buff*) ;
 struct sk_buff* create_hash_wr (struct ahash_request*,struct hash_wr_param*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 int cxgb4_is_crypto_q_full (int ,int ) ;
 int get_alg_config (TYPE_6__*,int ) ;
 TYPE_5__* h_ctx (struct crypto_ahash*) ;
 unsigned int rounddown (unsigned int,unsigned int) ;
 int roundup (int ,int) ;
 int set_wr_txq (struct sk_buff*,int ,int ) ;
 int sg_nents (int ) ;
 int sg_pcopy_to_buffer (int ,int ,scalar_t__,unsigned int,unsigned int) ;
 int swap (scalar_t__,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int chcr_ahash_update(struct ahash_request *req)
{
 struct chcr_ahash_req_ctx *req_ctx = ahash_request_ctx(req);
 struct crypto_ahash *rtfm = crypto_ahash_reqtfm(req);
 struct uld_ctx *u_ctx = ((void*)0);
 struct chcr_dev *dev = h_ctx(rtfm)->dev;
 struct sk_buff *skb;
 u8 remainder = 0, bs;
 unsigned int nbytes = req->nbytes;
 struct hash_wr_param params;
 int error, isfull = 0;

 bs = crypto_tfm_alg_blocksize(crypto_ahash_tfm(rtfm));
 u_ctx = ULD_CTX(h_ctx(rtfm));

 if (nbytes + req_ctx->reqlen >= bs) {
  remainder = (nbytes + req_ctx->reqlen) % bs;
  nbytes = nbytes + req_ctx->reqlen - remainder;
 } else {
  sg_pcopy_to_buffer(req->src, sg_nents(req->src), req_ctx->reqbfr
       + req_ctx->reqlen, nbytes, 0);
  req_ctx->reqlen += nbytes;
  return 0;
 }
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
 params.sg_len = chcr_hash_ent_in_wr(req->src, !!req_ctx->reqlen,
         HASH_SPACE_LEFT(params.kctx_len), 0);
 if (params.sg_len > req->nbytes)
  params.sg_len = req->nbytes;
 params.sg_len = rounddown(params.sg_len + req_ctx->reqlen, bs) -
   req_ctx->reqlen;
 params.opad_needed = 0;
 params.more = 1;
 params.last = 0;
 params.bfr_len = req_ctx->reqlen;
 params.scmd1 = 0;
 req_ctx->hctx_wr.srcsg = req->src;

 params.hash_size = params.alg_prm.result_size;
 req_ctx->data_len += params.sg_len + params.bfr_len;
 skb = create_hash_wr(req, &params);
 if (IS_ERR(skb)) {
  error = PTR_ERR(skb);
  goto unmap;
 }

 req_ctx->hctx_wr.processed += params.sg_len;
 if (remainder) {

  swap(req_ctx->reqbfr, req_ctx->skbfr);
  sg_pcopy_to_buffer(req->src, sg_nents(req->src),
       req_ctx->reqbfr, remainder, req->nbytes -
       remainder);
 }
 req_ctx->reqlen = remainder;
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
