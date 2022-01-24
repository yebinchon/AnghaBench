#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ulptx_sgl {int dummy; } ;
struct sk_buff {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/ * key; int /*<<< orphan*/  ctx_hdr; } ;
struct TYPE_10__ {int /*<<< orphan*/  ivgen_hdrlen; int /*<<< orphan*/  seqno_numivs; int /*<<< orphan*/  cipherstop_lo_authinsert; int /*<<< orphan*/  aadstart_cipherstop_hi; void* pldlen; int /*<<< orphan*/  op_ivinsrtofst; } ;
struct chcr_wr {TYPE_3__ key_ctx; TYPE_2__ sec_cpl; } ;
struct chcr_aead_reqctx {scalar_t__ op; int imm; struct sk_buff* skb; int /*<<< orphan*/  verify; scalar_t__ b0_len; } ;
struct chcr_aead_ctx {unsigned int enckey_len; int /*<<< orphan*/  salt; int /*<<< orphan*/  key; int /*<<< orphan*/  key_ctx_hdr; int /*<<< orphan*/  hmac_ctrl; } ;
struct TYPE_13__ {int flags; } ;
struct aead_request {unsigned int assoclen; scalar_t__ cryptlen; TYPE_5__ base; int /*<<< orphan*/  iv; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_9__ {int /*<<< orphan*/  aead_rqst; int /*<<< orphan*/  fallback; } ;
struct adapter {TYPE_1__ chcr_stats; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_14__ {int /*<<< orphan*/  ghash_h; } ;
struct TYPE_12__ {int /*<<< orphan*/  tx_chan_id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (TYPE_4__*) ; 
 int AEAD_H_SIZE ; 
 int /*<<< orphan*/  CHCR_DST_SG_SIZE ; 
 scalar_t__ CHCR_ENCRYPT_OP ; 
 int /*<<< orphan*/  CHCR_SCMD_AUTH_MODE_GHASH ; 
 int /*<<< orphan*/  CHCR_SCMD_CIPHER_MODE_AES_GCM ; 
 int /*<<< orphan*/  CHCR_SRC_SG_SIZE ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 scalar_t__ CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106 ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int GCM_AES_IV_SIZE ; 
 TYPE_7__* FUNC8 (struct chcr_aead_ctx*) ; 
 int GCM_RFC4106_IV_SIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IV ; 
 scalar_t__ MIN_GCM_SG ; 
 scalar_t__ SGE_MAX_WR_LEN ; 
 int /*<<< orphan*/  T6_MAX_AAD_SIZE ; 
 struct chcr_wr* FUNC9 (struct sk_buff*,unsigned int) ; 
 TYPE_4__* FUNC10 (struct crypto_aead*) ; 
 struct chcr_aead_reqctx* FUNC11 (struct aead_request*) ; 
 struct sk_buff* FUNC12 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct aead_request*,struct cpl_rx_phys_dsgl*,unsigned short) ; 
 int /*<<< orphan*/  FUNC15 (struct aead_request*,struct ulptx_sgl*) ; 
 int /*<<< orphan*/  FUNC16 (struct aead_request*) ; 
 int FUNC17 (struct aead_request*) ; 
 int FUNC18 (struct aead_request*,scalar_t__) ; 
 scalar_t__ FUNC19 (struct aead_request*,unsigned int,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,struct chcr_wr*,TYPE_5__*,int,int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC21 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC22 (struct aead_request*) ; 
 scalar_t__ FUNC23 (struct crypto_aead*) ; 
 unsigned int FUNC24 (unsigned int) ; 
 void* FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adapter* FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (unsigned int,int) ; 
 unsigned int FUNC29 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC30 (unsigned int) ; 

__attribute__((used)) static struct sk_buff *FUNC31(struct aead_request *req,
				     unsigned short qid,
				     int size)
{
	struct crypto_aead *tfm = FUNC22(req);
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC10(tfm));
	struct chcr_aead_reqctx  *reqctx = FUNC11(req);
	struct sk_buff *skb = NULL;
	struct chcr_wr *chcr_req;
	struct cpl_rx_phys_dsgl *phys_cpl;
	struct ulptx_sgl *ulptx;
	unsigned int transhdr_len, dnents = 0, snents;
	unsigned int dst_size = 0, temp = 0, kctx_len, assoclen = req->assoclen;
	unsigned int authsize = FUNC21(tfm);
	int error = -EINVAL;
	u8 *ivptr;
	gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL :
		GFP_ATOMIC;
	struct adapter *adap = FUNC27(FUNC10(tfm)->dev);

	if (FUNC23(tfm) == CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106)
		assoclen = req->assoclen - 8;

	reqctx->b0_len = 0;
	error = FUNC17(req);
	if (error)
		return FUNC2(error);
	dnents = FUNC29(req->dst, req->assoclen + req->cryptlen +
				(reqctx->op ? -authsize : authsize),
				CHCR_DST_SG_SIZE, 0);
	snents = FUNC29(req->src, req->assoclen + req->cryptlen,
			       CHCR_SRC_SG_SIZE, 0);
	dnents += MIN_GCM_SG; // For IV
	dst_size = FUNC24(dnents);
	kctx_len = FUNC28(aeadctx->enckey_len, 16) + AEAD_H_SIZE;
	transhdr_len = FUNC1(kctx_len, dst_size);
	reqctx->imm = (transhdr_len + req->assoclen + req->cryptlen) <=
			SGE_MAX_WR_LEN;
	temp = reqctx->imm ? FUNC28(req->assoclen + req->cryptlen, 16) :
		(FUNC30(snents) * 8);
	transhdr_len += temp;
	transhdr_len = FUNC28(transhdr_len, 16);
	if (FUNC19(req, dnents, T6_MAX_AAD_SIZE,
			    transhdr_len, reqctx->op)) {

		FUNC13(&adap->chcr_stats.fallback);
		FUNC16(req);
		return FUNC2(FUNC18(req, reqctx->op));
	}
	skb = FUNC12(transhdr_len, flags);
	if (!skb) {
		error = -ENOMEM;
		goto err;
	}

	chcr_req = FUNC9(skb, transhdr_len);

	//Offset of tag from end
	temp = (reqctx->op == CHCR_ENCRYPT_OP) ? 0 : authsize;
	chcr_req->sec_cpl.op_ivinsrtofst = FUNC6(
					FUNC10(tfm)->tx_chan_id, 2, 1);
	chcr_req->sec_cpl.pldlen =
		FUNC25(req->assoclen + IV + req->cryptlen);
	chcr_req->sec_cpl.aadstart_cipherstop_hi = FUNC4(
					assoclen ? 1 + IV : 0,
					assoclen ? IV + assoclen : 0,
					req->assoclen + IV + 1, 0);
	chcr_req->sec_cpl.cipherstop_lo_authinsert =
			FUNC3(0, req->assoclen + IV + 1,
						temp, temp);
	chcr_req->sec_cpl.seqno_numivs =
			FUNC7(reqctx->op, (reqctx->op ==
					CHCR_ENCRYPT_OP) ? 1 : 0,
					CHCR_SCMD_CIPHER_MODE_AES_GCM,
					CHCR_SCMD_AUTH_MODE_GHASH,
					aeadctx->hmac_ctrl, IV >> 1);
	chcr_req->sec_cpl.ivgen_hdrlen =  FUNC5(0, 0, 1,
					0, 0, dst_size);
	chcr_req->key_ctx.ctx_hdr = aeadctx->key_ctx_hdr;
	FUNC26(chcr_req->key_ctx.key, aeadctx->key, aeadctx->enckey_len);
	FUNC26(chcr_req->key_ctx.key + FUNC28(aeadctx->enckey_len, 16),
	       FUNC8(aeadctx)->ghash_h, AEAD_H_SIZE);

	phys_cpl = (struct cpl_rx_phys_dsgl *)((u8 *)(chcr_req + 1) + kctx_len);
	ivptr = (u8 *)(phys_cpl + 1) + dst_size;
	/* prepare a 16 byte iv */
	/* S   A   L  T |  IV | 0x00000001 */
	if (FUNC23(tfm) ==
	    CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106) {
		FUNC26(ivptr, aeadctx->salt, 4);
		FUNC26(ivptr + 4, req->iv, GCM_RFC4106_IV_SIZE);
	} else {
		FUNC26(ivptr, req->iv, GCM_AES_IV_SIZE);
	}
	*((unsigned int *)(ivptr + 12)) = FUNC25(0x01);

	ulptx = (struct ulptx_sgl *)(ivptr + 16);

	FUNC14(req, phys_cpl, qid);
	FUNC15(req, ulptx);
	FUNC13(&adap->chcr_stats.aead_rqst);
	temp = sizeof(struct cpl_rx_phys_dsgl) + dst_size + IV +
		kctx_len + (reqctx->imm ? (req->assoclen + req->cryptlen) : 0);
	FUNC20(FUNC10(tfm), chcr_req, &req->base, reqctx->imm, size,
		    transhdr_len, temp, reqctx->verify);
	reqctx->skb = skb;
	return skb;

err:
	FUNC16(req);
	return FUNC2(error);
}