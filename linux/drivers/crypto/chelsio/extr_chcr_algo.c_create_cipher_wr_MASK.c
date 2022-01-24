#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ulptx_sgl {int dummy; } ;
struct sk_buff {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct cipher_wr_param {unsigned int bytes; TYPE_4__* req; int /*<<< orphan*/  qid; } ;
struct TYPE_14__ {scalar_t__ key; int /*<<< orphan*/  ctx_hdr; } ;
struct TYPE_12__ {int /*<<< orphan*/  ivgen_hdrlen; int /*<<< orphan*/  seqno_numivs; int /*<<< orphan*/  cipherstop_lo_authinsert; int /*<<< orphan*/  aadstart_cipherstop_hi; int /*<<< orphan*/  pldlen; int /*<<< orphan*/  op_ivinsrtofst; } ;
struct chcr_wr {TYPE_3__ key_ctx; TYPE_1__ sec_cpl; } ;
struct chcr_blkcipher_req_ctx {scalar_t__ op; int processed; struct sk_buff* skb; scalar_t__ imm; int /*<<< orphan*/  src_ofst; int /*<<< orphan*/  srcsg; int /*<<< orphan*/  dst_ofst; int /*<<< orphan*/  dstsg; } ;
struct TYPE_13__ {int /*<<< orphan*/  cipher_rqst; } ;
struct adapter {TYPE_2__ chcr_stats; } ;
struct ablk_ctx {unsigned int enckey_len; scalar_t__ ciph_mode; scalar_t__ key; int /*<<< orphan*/  key_ctx_hdr; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {int /*<<< orphan*/  tx_chan_id; int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  info; int /*<<< orphan*/  src; TYPE_6__ base; } ;

/* Variables and functions */
 struct ablk_ctx* FUNC0 (TYPE_5__*) ; 
 int AES_BLOCK_SIZE ; 
 scalar_t__ CHCR_DECRYPT_OP ; 
 int /*<<< orphan*/  CHCR_DST_SG_SIZE ; 
 scalar_t__ CHCR_SCMD_CIPHER_MODE_AES_CBC ; 
 scalar_t__ CHCR_SCMD_CIPHER_MODE_AES_CTR ; 
 int /*<<< orphan*/  CHCR_SRC_SG_SIZE ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 scalar_t__ CRYPTO_ALG_SUB_TYPE_CTR ; 
 scalar_t__ CRYPTO_ALG_SUB_TYPE_CTR_RFC3686 ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int ENOMEM ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IV ; 
 int /*<<< orphan*/  SGE_MAX_WR_LEN ; 
 struct chcr_wr* FUNC8 (struct sk_buff*,unsigned int) ; 
 struct chcr_blkcipher_req_ctx* FUNC9 (TYPE_4__*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC12 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,struct cpl_rx_phys_dsgl*,struct cipher_wr_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,struct ulptx_sgl*,struct cipher_wr_param*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,struct chcr_wr*,TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 
 struct crypto_ablkcipher* FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC18 (struct ablk_ctx*,TYPE_3__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,int) ; 
 struct adapter* FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC28 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC29(struct cipher_wr_param *wrparam)
{
	struct crypto_ablkcipher *tfm = FUNC16(wrparam->req);
	struct ablk_ctx *ablkctx = FUNC0(FUNC12(tfm));
	struct sk_buff *skb = NULL;
	struct chcr_wr *chcr_req;
	struct cpl_rx_phys_dsgl *phys_cpl;
	struct ulptx_sgl *ulptx;
	struct chcr_blkcipher_req_ctx *reqctx =
		FUNC9(wrparam->req);
	unsigned int temp = 0, transhdr_len, dst_size;
	int error;
	int nents;
	unsigned int kctx_len;
	gfp_t flags = wrparam->req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
			GFP_KERNEL : GFP_ATOMIC;
	struct adapter *adap = FUNC23(FUNC12(tfm)->dev);

	nents = FUNC26(reqctx->dstsg,  wrparam->bytes, CHCR_DST_SG_SIZE,
			      reqctx->dst_ofst);
	dst_size = FUNC20(nents);
	kctx_len = FUNC24(ablkctx->enckey_len, 16);
	transhdr_len = FUNC1(kctx_len, dst_size);
	nents = FUNC26(reqctx->srcsg, wrparam->bytes,
				  CHCR_SRC_SG_SIZE, reqctx->src_ofst);
	temp = reqctx->imm ? FUNC24(wrparam->bytes, 16) :
				     (FUNC28(nents) * 8);
	transhdr_len += temp;
	transhdr_len = FUNC24(transhdr_len, 16);
	skb = FUNC10(SGE_MAX_WR_LEN, flags);
	if (!skb) {
		error = -ENOMEM;
		goto err;
	}
	chcr_req = FUNC8(skb, transhdr_len);
	chcr_req->sec_cpl.op_ivinsrtofst =
		FUNC6(FUNC12(tfm)->tx_chan_id, 2, 1);

	chcr_req->sec_cpl.pldlen = FUNC21(IV + wrparam->bytes);
	chcr_req->sec_cpl.aadstart_cipherstop_hi =
			FUNC4(0, 0, IV + 1, 0);

	chcr_req->sec_cpl.cipherstop_lo_authinsert =
			FUNC3(0, 0, 0, 0);
	chcr_req->sec_cpl.seqno_numivs = FUNC7(reqctx->op, 0,
							 ablkctx->ciph_mode,
							 0, 0, IV >> 1);
	chcr_req->sec_cpl.ivgen_hdrlen = FUNC5(0, 0, 0,
							  0, 1, dst_size);

	chcr_req->key_ctx.ctx_hdr = ablkctx->key_ctx_hdr;
	if ((reqctx->op == CHCR_DECRYPT_OP) &&
	    (!(FUNC19(FUNC17(tfm)) ==
	       CRYPTO_ALG_SUB_TYPE_CTR)) &&
	    (!(FUNC19(FUNC17(tfm)) ==
	       CRYPTO_ALG_SUB_TYPE_CTR_RFC3686))) {
		FUNC18(ablkctx, &chcr_req->key_ctx);
	} else {
		if ((ablkctx->ciph_mode == CHCR_SCMD_CIPHER_MODE_AES_CBC) ||
		    (ablkctx->ciph_mode == CHCR_SCMD_CIPHER_MODE_AES_CTR)) {
			FUNC22(chcr_req->key_ctx.key, ablkctx->key,
			       ablkctx->enckey_len);
		} else {
			FUNC22(chcr_req->key_ctx.key, ablkctx->key +
			       (ablkctx->enckey_len >> 1),
			       ablkctx->enckey_len >> 1);
			FUNC22(chcr_req->key_ctx.key +
			       (ablkctx->enckey_len >> 1),
			       ablkctx->key,
			       ablkctx->enckey_len >> 1);
		}
	}
	phys_cpl = (struct cpl_rx_phys_dsgl *)((u8 *)(chcr_req + 1) + kctx_len);
	ulptx = (struct ulptx_sgl *)((u8 *)(phys_cpl + 1) + dst_size);
	FUNC14(wrparam->req, ulptx, wrparam);
	FUNC13(wrparam->req, phys_cpl, wrparam, wrparam->qid);

	FUNC11(&adap->chcr_stats.cipher_rqst);
	temp = sizeof(struct cpl_rx_phys_dsgl) + dst_size + kctx_len + IV
		+ (reqctx->imm ? (wrparam->bytes) : 0);
	FUNC15(FUNC12(tfm), chcr_req, &(wrparam->req->base), reqctx->imm, 0,
		    transhdr_len, temp,
			ablkctx->ciph_mode == CHCR_SCMD_CIPHER_MODE_AES_CBC);
	reqctx->skb = skb;

	if (reqctx->op && (ablkctx->ciph_mode ==
			   CHCR_SCMD_CIPHER_MODE_AES_CBC))
		FUNC27(wrparam->req->src,
			FUNC25(wrparam->req->src), wrparam->req->info, 16,
			reqctx->processed + wrparam->bytes - AES_BLOCK_SIZE);

	return skb;
err:
	return FUNC2(error);
}