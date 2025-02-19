
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int * ports; } ;
struct uld_ctx {TYPE_1__ lldi; } ;
struct sk_buff {int dev; } ;
struct TYPE_7__ {int result_size; } ;
struct hash_wr_param {int kctx_len; int opad_needed; scalar_t__ sg_len; int last; int more; scalar_t__ scmd1; scalar_t__ bfr_len; int hash_size; TYPE_3__ alg_prm; } ;
struct crypto_ahash {int dummy; } ;
struct chcr_hctx_per_wr {scalar_t__ processed; int result; int src_ofst; int srcsg; } ;
struct chcr_ahash_req_ctx {scalar_t__ data_len; struct chcr_hctx_per_wr hctx_wr; } ;
struct ahash_request {scalar_t__ nbytes; } ;
struct TYPE_6__ {int tx_qidx; } ;


 int CPL_PRIORITY_DATA ;
 int HASH_SPACE_LEFT (int) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct uld_ctx* ULD_CTX (TYPE_2__*) ;
 struct chcr_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 scalar_t__ chcr_hash_ent_in_wr (int ,int ,int ,int ) ;
 int chcr_send_wr (struct sk_buff*) ;
 struct sk_buff* create_hash_wr (struct ahash_request*,struct hash_wr_param*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 int crypto_tfm_alg_blocksize (int ) ;
 int get_alg_config (TYPE_3__*,int ) ;
 TYPE_2__* h_ctx (struct crypto_ahash*) ;
 scalar_t__ is_hmac (int ) ;
 scalar_t__ rounddown (scalar_t__,int ) ;
 int roundup (int ,int) ;
 int set_wr_txq (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int chcr_ahash_continue(struct ahash_request *req)
{
 struct chcr_ahash_req_ctx *reqctx = ahash_request_ctx(req);
 struct chcr_hctx_per_wr *hctx_wr = &reqctx->hctx_wr;
 struct crypto_ahash *rtfm = crypto_ahash_reqtfm(req);
 struct uld_ctx *u_ctx = ((void*)0);
 struct sk_buff *skb;
 struct hash_wr_param params;
 u8 bs;
 int error;

 bs = crypto_tfm_alg_blocksize(crypto_ahash_tfm(rtfm));
 u_ctx = ULD_CTX(h_ctx(rtfm));
 get_alg_config(&params.alg_prm, crypto_ahash_digestsize(rtfm));
 params.kctx_len = roundup(params.alg_prm.result_size, 16);
 if (is_hmac(crypto_ahash_tfm(rtfm))) {
  params.kctx_len *= 2;
  params.opad_needed = 1;
 } else {
  params.opad_needed = 0;
 }
 params.sg_len = chcr_hash_ent_in_wr(hctx_wr->srcsg, 0,
         HASH_SPACE_LEFT(params.kctx_len),
         hctx_wr->src_ofst);
 if ((params.sg_len + hctx_wr->processed) > req->nbytes)
  params.sg_len = req->nbytes - hctx_wr->processed;
 if (!hctx_wr->result ||
     ((params.sg_len + hctx_wr->processed) < req->nbytes)) {
  if (is_hmac(crypto_ahash_tfm(rtfm))) {
   params.kctx_len /= 2;
   params.opad_needed = 0;
  }
  params.last = 0;
  params.more = 1;
  params.sg_len = rounddown(params.sg_len, bs);
  params.hash_size = params.alg_prm.result_size;
  params.scmd1 = 0;
 } else {
  params.last = 1;
  params.more = 0;
  params.hash_size = crypto_ahash_digestsize(rtfm);
  params.scmd1 = reqctx->data_len + params.sg_len;
 }
 params.bfr_len = 0;
 reqctx->data_len += params.sg_len;
 skb = create_hash_wr(req, &params);
 if (IS_ERR(skb)) {
  error = PTR_ERR(skb);
  goto err;
 }
 hctx_wr->processed += params.sg_len;
 skb->dev = u_ctx->lldi.ports[0];
 set_wr_txq(skb, CPL_PRIORITY_DATA, h_ctx(rtfm)->tx_qidx);
 chcr_send_wr(skb);
 return 0;
err:
 return error;
}
