
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct ulptx_sgl {int dummy; } ;
struct sk_buff {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct cipher_wr_param {unsigned int bytes; TYPE_4__* req; int qid; } ;
struct TYPE_14__ {scalar_t__ key; int ctx_hdr; } ;
struct TYPE_12__ {int ivgen_hdrlen; int seqno_numivs; int cipherstop_lo_authinsert; int aadstart_cipherstop_hi; int pldlen; int op_ivinsrtofst; } ;
struct chcr_wr {TYPE_3__ key_ctx; TYPE_1__ sec_cpl; } ;
struct chcr_blkcipher_req_ctx {scalar_t__ op; int processed; struct sk_buff* skb; scalar_t__ imm; int src_ofst; int srcsg; int dst_ofst; int dstsg; } ;
struct TYPE_13__ {int cipher_rqst; } ;
struct adapter {TYPE_2__ chcr_stats; } ;
struct ablk_ctx {unsigned int enckey_len; scalar_t__ ciph_mode; scalar_t__ key; int key_ctx_hdr; } ;
typedef int gfp_t ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {int tx_chan_id; int dev; } ;
struct TYPE_15__ {int info; int src; TYPE_6__ base; } ;


 struct ablk_ctx* ABLK_CTX (TYPE_5__*) ;
 int AES_BLOCK_SIZE ;
 scalar_t__ CHCR_DECRYPT_OP ;
 int CHCR_DST_SG_SIZE ;
 scalar_t__ CHCR_SCMD_CIPHER_MODE_AES_CBC ;
 scalar_t__ CHCR_SCMD_CIPHER_MODE_AES_CTR ;
 int CHCR_SRC_SG_SIZE ;
 unsigned int CIPHER_TRANSHDR_SIZE (unsigned int,unsigned int) ;
 scalar_t__ CRYPTO_ALG_SUB_TYPE_CTR ;
 scalar_t__ CRYPTO_ALG_SUB_TYPE_CTR_RFC3686 ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 int FILL_SEC_CPL_AUTHINSERT (int ,int ,int ,int ) ;
 int FILL_SEC_CPL_CIPHERSTOP_HI (int ,int ,int,int ) ;
 int FILL_SEC_CPL_IVGEN_HDRLEN (int ,int ,int ,int ,int,unsigned int) ;
 int FILL_SEC_CPL_OP_IVINSR (int ,int,int) ;
 int FILL_SEC_CPL_SCMD0_SEQNO (scalar_t__,int ,scalar_t__,int ,int ,int) ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int IV ;
 int SGE_MAX_WR_LEN ;
 struct chcr_wr* __skb_put_zero (struct sk_buff*,unsigned int) ;
 struct chcr_blkcipher_req_ctx* ablkcipher_request_ctx (TYPE_4__*) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int atomic_inc (int *) ;
 TYPE_5__* c_ctx (struct crypto_ablkcipher*) ;
 int chcr_add_cipher_dst_ent (TYPE_4__*,struct cpl_rx_phys_dsgl*,struct cipher_wr_param*,int ) ;
 int chcr_add_cipher_src_ent (TYPE_4__*,struct ulptx_sgl*,struct cipher_wr_param*) ;
 int create_wreq (TYPE_5__*,struct chcr_wr*,TYPE_6__*,scalar_t__,int ,unsigned int,unsigned int,int) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (TYPE_4__*) ;
 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 int generate_copy_rrkey (struct ablk_ctx*,TYPE_3__*) ;
 scalar_t__ get_cryptoalg_subtype (int ) ;
 unsigned int get_space_for_phys_dsgl (int) ;
 int htonl (unsigned int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 struct adapter* padap (int ) ;
 int roundup (unsigned int,int) ;
 int sg_nents (int ) ;
 int sg_nents_xlen (int ,unsigned int,int ,int ) ;
 int sg_pcopy_to_buffer (int ,int ,int ,int,int) ;
 int sgl_len (int) ;

__attribute__((used)) static struct sk_buff *create_cipher_wr(struct cipher_wr_param *wrparam)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(wrparam->req);
 struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(tfm));
 struct sk_buff *skb = ((void*)0);
 struct chcr_wr *chcr_req;
 struct cpl_rx_phys_dsgl *phys_cpl;
 struct ulptx_sgl *ulptx;
 struct chcr_blkcipher_req_ctx *reqctx =
  ablkcipher_request_ctx(wrparam->req);
 unsigned int temp = 0, transhdr_len, dst_size;
 int error;
 int nents;
 unsigned int kctx_len;
 gfp_t flags = wrparam->req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
   GFP_KERNEL : GFP_ATOMIC;
 struct adapter *adap = padap(c_ctx(tfm)->dev);

 nents = sg_nents_xlen(reqctx->dstsg, wrparam->bytes, CHCR_DST_SG_SIZE,
         reqctx->dst_ofst);
 dst_size = get_space_for_phys_dsgl(nents);
 kctx_len = roundup(ablkctx->enckey_len, 16);
 transhdr_len = CIPHER_TRANSHDR_SIZE(kctx_len, dst_size);
 nents = sg_nents_xlen(reqctx->srcsg, wrparam->bytes,
      CHCR_SRC_SG_SIZE, reqctx->src_ofst);
 temp = reqctx->imm ? roundup(wrparam->bytes, 16) :
         (sgl_len(nents) * 8);
 transhdr_len += temp;
 transhdr_len = roundup(transhdr_len, 16);
 skb = alloc_skb(SGE_MAX_WR_LEN, flags);
 if (!skb) {
  error = -ENOMEM;
  goto err;
 }
 chcr_req = __skb_put_zero(skb, transhdr_len);
 chcr_req->sec_cpl.op_ivinsrtofst =
  FILL_SEC_CPL_OP_IVINSR(c_ctx(tfm)->tx_chan_id, 2, 1);

 chcr_req->sec_cpl.pldlen = htonl(IV + wrparam->bytes);
 chcr_req->sec_cpl.aadstart_cipherstop_hi =
   FILL_SEC_CPL_CIPHERSTOP_HI(0, 0, IV + 1, 0);

 chcr_req->sec_cpl.cipherstop_lo_authinsert =
   FILL_SEC_CPL_AUTHINSERT(0, 0, 0, 0);
 chcr_req->sec_cpl.seqno_numivs = FILL_SEC_CPL_SCMD0_SEQNO(reqctx->op, 0,
        ablkctx->ciph_mode,
        0, 0, IV >> 1);
 chcr_req->sec_cpl.ivgen_hdrlen = FILL_SEC_CPL_IVGEN_HDRLEN(0, 0, 0,
         0, 1, dst_size);

 chcr_req->key_ctx.ctx_hdr = ablkctx->key_ctx_hdr;
 if ((reqctx->op == CHCR_DECRYPT_OP) &&
     (!(get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm)) ==
        CRYPTO_ALG_SUB_TYPE_CTR)) &&
     (!(get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm)) ==
        CRYPTO_ALG_SUB_TYPE_CTR_RFC3686))) {
  generate_copy_rrkey(ablkctx, &chcr_req->key_ctx);
 } else {
  if ((ablkctx->ciph_mode == CHCR_SCMD_CIPHER_MODE_AES_CBC) ||
      (ablkctx->ciph_mode == CHCR_SCMD_CIPHER_MODE_AES_CTR)) {
   memcpy(chcr_req->key_ctx.key, ablkctx->key,
          ablkctx->enckey_len);
  } else {
   memcpy(chcr_req->key_ctx.key, ablkctx->key +
          (ablkctx->enckey_len >> 1),
          ablkctx->enckey_len >> 1);
   memcpy(chcr_req->key_ctx.key +
          (ablkctx->enckey_len >> 1),
          ablkctx->key,
          ablkctx->enckey_len >> 1);
  }
 }
 phys_cpl = (struct cpl_rx_phys_dsgl *)((u8 *)(chcr_req + 1) + kctx_len);
 ulptx = (struct ulptx_sgl *)((u8 *)(phys_cpl + 1) + dst_size);
 chcr_add_cipher_src_ent(wrparam->req, ulptx, wrparam);
 chcr_add_cipher_dst_ent(wrparam->req, phys_cpl, wrparam, wrparam->qid);

 atomic_inc(&adap->chcr_stats.cipher_rqst);
 temp = sizeof(struct cpl_rx_phys_dsgl) + dst_size + kctx_len + IV
  + (reqctx->imm ? (wrparam->bytes) : 0);
 create_wreq(c_ctx(tfm), chcr_req, &(wrparam->req->base), reqctx->imm, 0,
      transhdr_len, temp,
   ablkctx->ciph_mode == CHCR_SCMD_CIPHER_MODE_AES_CBC);
 reqctx->skb = skb;

 if (reqctx->op && (ablkctx->ciph_mode ==
      CHCR_SCMD_CIPHER_MODE_AES_CBC))
  sg_pcopy_to_buffer(wrparam->req->src,
   sg_nents(wrparam->req->src), wrparam->req->info, 16,
   reqctx->processed + wrparam->bytes - AES_BLOCK_SIZE);

 return skb;
err:
 return ERR_PTR(error);
}
