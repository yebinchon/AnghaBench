#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ulptx_sgl {int dummy; } ;
struct sk_buff {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * key; int /*<<< orphan*/  ctx_hdr; } ;
struct TYPE_10__ {int /*<<< orphan*/  ivgen_hdrlen; int /*<<< orphan*/  seqno_numivs; int /*<<< orphan*/  cipherstop_lo_authinsert; int /*<<< orphan*/  aadstart_cipherstop_hi; int /*<<< orphan*/  pldlen; int /*<<< orphan*/  op_ivinsrtofst; } ;
struct chcr_wr {TYPE_1__ key_ctx; TYPE_3__ sec_cpl; } ;
struct chcr_authenc_ctx {int /*<<< orphan*/  h_iopad; int /*<<< orphan*/  dec_rrkey; int /*<<< orphan*/  auth_mode; } ;
struct chcr_aead_reqctx {scalar_t__ op; int imm; struct sk_buff* skb; scalar_t__ b0_len; } ;
struct chcr_aead_ctx {int enckey_len; int /*<<< orphan*/  nonce; int /*<<< orphan*/  key; int /*<<< orphan*/  key_ctx_hdr; int /*<<< orphan*/  hmac_ctrl; } ;
struct TYPE_12__ {int flags; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; TYPE_5__ base; int /*<<< orphan*/  iv; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_9__ {int /*<<< orphan*/  cipher_rqst; int /*<<< orphan*/  fallback; } ;
struct adapter {TYPE_2__ chcr_stats; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_11__ {int /*<<< orphan*/  tx_chan_id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (TYPE_4__*) ; 
 struct chcr_authenc_ctx* FUNC1 (struct chcr_aead_ctx*) ; 
 int /*<<< orphan*/  CHCR_DST_SG_SIZE ; 
 scalar_t__ CHCR_ENCRYPT_OP ; 
 unsigned int CHCR_SCMD_CIPHER_MODE_AES_CBC ; 
 unsigned int CHCR_SCMD_CIPHER_MODE_AES_CTR ; 
 int /*<<< orphan*/  CHCR_SRC_SG_SIZE ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_CBC_NULL ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_CTR_NULL ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_CTR_SHA ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int CTR_RFC3686_IV_SIZE ; 
 int CTR_RFC3686_NONCE_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IV ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ MIN_AUTH_SG ; 
 scalar_t__ SGE_MAX_WR_LEN ; 
 int /*<<< orphan*/  T6_MAX_AAD_SIZE ; 
 struct chcr_wr* FUNC10 (struct sk_buff*,unsigned int) ; 
 TYPE_4__* FUNC11 (struct crypto_aead*) ; 
 struct chcr_aead_reqctx* FUNC12 (struct aead_request*) ; 
 struct sk_buff* FUNC13 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct aead_request*,struct cpl_rx_phys_dsgl*,unsigned short) ; 
 int /*<<< orphan*/  FUNC16 (struct aead_request*,struct ulptx_sgl*) ; 
 int /*<<< orphan*/  FUNC17 (struct aead_request*) ; 
 int FUNC18 (struct aead_request*) ; 
 int FUNC19 (struct aead_request*,scalar_t__) ; 
 scalar_t__ FUNC20 (struct aead_request*,unsigned int,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,struct chcr_wr*,TYPE_5__*,int,int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC23 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC24 (struct aead_request*) ; 
 unsigned int FUNC25 (struct crypto_aead*) ; 
 unsigned int FUNC26 (unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC30 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC31 (unsigned int,int) ; 
 unsigned int FUNC32 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC33 (unsigned int) ; 

__attribute__((used)) static struct sk_buff *FUNC34(struct aead_request *req,
					 unsigned short qid,
					 int size)
{
	struct crypto_aead *tfm = FUNC24(req);
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC11(tfm));
	struct chcr_authenc_ctx *actx = FUNC1(aeadctx);
	struct chcr_aead_reqctx *reqctx = FUNC12(req);
	struct sk_buff *skb = NULL;
	struct chcr_wr *chcr_req;
	struct cpl_rx_phys_dsgl *phys_cpl;
	struct ulptx_sgl *ulptx;
	unsigned int transhdr_len;
	unsigned int dst_size = 0, temp, subtype = FUNC25(tfm);
	unsigned int   kctx_len = 0, dnents, snents;
	unsigned int  authsize = FUNC23(tfm);
	int error = -EINVAL;
	u8 *ivptr;
	int null = 0;
	gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL :
		GFP_ATOMIC;
	struct adapter *adap = FUNC30(FUNC11(tfm)->dev);

	if (req->cryptlen == 0)
		return NULL;

	reqctx->b0_len = 0;
	error = FUNC18(req);
	if (error)
		return FUNC3(error);

	if (subtype == CRYPTO_ALG_SUB_TYPE_CBC_NULL ||
		subtype == CRYPTO_ALG_SUB_TYPE_CTR_NULL) {
		null = 1;
	}
	dnents = FUNC32(req->dst, req->assoclen + req->cryptlen +
		(reqctx->op ? -authsize : authsize), CHCR_DST_SG_SIZE, 0);
	dnents += MIN_AUTH_SG; // For IV
	snents = FUNC32(req->src, req->assoclen + req->cryptlen,
			       CHCR_SRC_SG_SIZE, 0);
	dst_size = FUNC26(dnents);
	kctx_len = (FUNC29(FUNC9(aeadctx->key_ctx_hdr)) << 4)
		- sizeof(chcr_req->key_ctx);
	transhdr_len = FUNC2(kctx_len, dst_size);
	reqctx->imm = (transhdr_len + req->assoclen + req->cryptlen) <
			SGE_MAX_WR_LEN;
	temp = reqctx->imm ? FUNC31(req->assoclen + req->cryptlen, 16)
			: (FUNC33(snents) * 8);
	transhdr_len += temp;
	transhdr_len = FUNC31(transhdr_len, 16);

	if (FUNC20(req, dnents, T6_MAX_AAD_SIZE,
				    transhdr_len, reqctx->op)) {
		FUNC14(&adap->chcr_stats.fallback);
		FUNC17(req);
		return FUNC3(FUNC19(req, reqctx->op));
	}
	skb = FUNC13(transhdr_len, flags);
	if (!skb) {
		error = -ENOMEM;
		goto err;
	}

	chcr_req = FUNC10(skb, transhdr_len);

	temp  = (reqctx->op == CHCR_ENCRYPT_OP) ? 0 : authsize;

	/*
	 * Input order	is AAD,IV and Payload. where IV should be included as
	 * the part of authdata. All other fields should be filled according
	 * to the hardware spec
	 */
	chcr_req->sec_cpl.op_ivinsrtofst =
		FUNC7(FUNC11(tfm)->tx_chan_id, 2, 1);
	chcr_req->sec_cpl.pldlen = FUNC27(req->assoclen + IV + req->cryptlen);
	chcr_req->sec_cpl.aadstart_cipherstop_hi = FUNC5(
					null ? 0 : 1 + IV,
					null ? 0 : IV + req->assoclen,
					req->assoclen + IV + 1,
					(temp & 0x1F0) >> 4);
	chcr_req->sec_cpl.cipherstop_lo_authinsert = FUNC4(
					temp & 0xF,
					null ? 0 : req->assoclen + IV + 1,
					temp, temp);
	if (subtype == CRYPTO_ALG_SUB_TYPE_CTR_NULL ||
	    subtype == CRYPTO_ALG_SUB_TYPE_CTR_SHA)
		temp = CHCR_SCMD_CIPHER_MODE_AES_CTR;
	else
		temp = CHCR_SCMD_CIPHER_MODE_AES_CBC;
	chcr_req->sec_cpl.seqno_numivs = FUNC8(reqctx->op,
					(reqctx->op == CHCR_ENCRYPT_OP) ? 1 : 0,
					temp,
					actx->auth_mode, aeadctx->hmac_ctrl,
					IV >> 1);
	chcr_req->sec_cpl.ivgen_hdrlen =  FUNC6(0, 0, 1,
					 0, 0, dst_size);

	chcr_req->key_ctx.ctx_hdr = aeadctx->key_ctx_hdr;
	if (reqctx->op == CHCR_ENCRYPT_OP ||
		subtype == CRYPTO_ALG_SUB_TYPE_CTR_SHA ||
		subtype == CRYPTO_ALG_SUB_TYPE_CTR_NULL)
		FUNC28(chcr_req->key_ctx.key, aeadctx->key,
		       aeadctx->enckey_len);
	else
		FUNC28(chcr_req->key_ctx.key, actx->dec_rrkey,
		       aeadctx->enckey_len);

	FUNC28(chcr_req->key_ctx.key + FUNC31(aeadctx->enckey_len, 16),
	       actx->h_iopad, kctx_len - FUNC31(aeadctx->enckey_len, 16));
	phys_cpl = (struct cpl_rx_phys_dsgl *)((u8 *)(chcr_req + 1) + kctx_len);
	ivptr = (u8 *)(phys_cpl + 1) + dst_size;
	ulptx = (struct ulptx_sgl *)(ivptr + IV);
	if (subtype == CRYPTO_ALG_SUB_TYPE_CTR_SHA ||
	    subtype == CRYPTO_ALG_SUB_TYPE_CTR_NULL) {
		FUNC28(ivptr, aeadctx->nonce, CTR_RFC3686_NONCE_SIZE);
		FUNC28(ivptr + CTR_RFC3686_NONCE_SIZE, req->iv,
				CTR_RFC3686_IV_SIZE);
		*(__be32 *)(ivptr + CTR_RFC3686_NONCE_SIZE +
			CTR_RFC3686_IV_SIZE) = FUNC21(1);
	} else {
		FUNC28(ivptr, req->iv, IV);
	}
	FUNC15(req, phys_cpl, qid);
	FUNC16(req, ulptx);
	FUNC14(&adap->chcr_stats.cipher_rqst);
	temp = sizeof(struct cpl_rx_phys_dsgl) + dst_size + IV +
		kctx_len + (reqctx->imm ? (req->assoclen + req->cryptlen) : 0);
	FUNC22(FUNC11(tfm), chcr_req, &req->base, reqctx->imm, size,
		   transhdr_len, temp, 0);
	reqctx->skb = skb;

	return skb;
err:
	FUNC17(req);

	return FUNC3(error);
}