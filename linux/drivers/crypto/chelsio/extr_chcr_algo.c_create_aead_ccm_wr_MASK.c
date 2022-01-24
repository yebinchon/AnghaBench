#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ulptx_sgl {int dummy; } ;
struct sk_buff {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct TYPE_7__ {scalar_t__ key; int /*<<< orphan*/  ctx_hdr; } ;
struct chcr_wr {TYPE_1__ key_ctx; int /*<<< orphan*/  sec_cpl; } ;
struct chcr_aead_reqctx {unsigned int b0_len; int imm; struct sk_buff* skb; scalar_t__ op; } ;
struct chcr_aead_ctx {unsigned int enckey_len; int /*<<< orphan*/  key; int /*<<< orphan*/  key_ctx_hdr; } ;
struct TYPE_10__ {int flags; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; TYPE_4__ base; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_8__ {int /*<<< orphan*/  aead_rqst; int /*<<< orphan*/  fallback; } ;
struct adapter {TYPE_2__ chcr_stats; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  CCM_AAD_FIELD_SIZE ; 
 unsigned int CCM_B0_SIZE ; 
 int /*<<< orphan*/  CHCR_DST_SG_SIZE ; 
 int /*<<< orphan*/  CHCR_SRC_SG_SIZE ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309 ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IV ; 
 scalar_t__ MIN_CCM_SG ; 
 unsigned int SGE_MAX_WR_LEN ; 
 scalar_t__ T6_MAX_AAD_SIZE ; 
 struct chcr_wr* FUNC3 (struct sk_buff*,unsigned int) ; 
 TYPE_3__* FUNC4 (struct crypto_aead*) ; 
 int FUNC5 (scalar_t__,struct aead_request*,struct chcr_aead_ctx*,unsigned int) ; 
 struct chcr_aead_reqctx* FUNC6 (struct aead_request*) ; 
 struct sk_buff* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct aead_request*,int /*<<< orphan*/ *,unsigned int,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct aead_request*,struct cpl_rx_phys_dsgl*,unsigned short) ; 
 int /*<<< orphan*/  FUNC11 (struct aead_request*,struct ulptx_sgl*) ; 
 int /*<<< orphan*/  FUNC12 (struct aead_request*) ; 
 int FUNC13 (struct aead_request*) ; 
 int FUNC14 (struct aead_request*,scalar_t__) ; 
 scalar_t__ FUNC15 (struct aead_request*,unsigned int,scalar_t__,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,struct chcr_wr*,TYPE_4__*,int,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC17 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC18 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned int,struct aead_request*,scalar_t__) ; 
 unsigned int FUNC20 (struct crypto_aead*) ; 
 unsigned int FUNC21 (unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 struct adapter* FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (unsigned int,int) ; 
 unsigned int FUNC26 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (unsigned int) ; 

__attribute__((used)) static struct sk_buff *FUNC28(struct aead_request *req,
					  unsigned short qid,
					  int size)
{
	struct crypto_aead *tfm = FUNC18(req);
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC4(tfm));
	struct chcr_aead_reqctx *reqctx = FUNC6(req);
	struct sk_buff *skb = NULL;
	struct chcr_wr *chcr_req;
	struct cpl_rx_phys_dsgl *phys_cpl;
	struct ulptx_sgl *ulptx;
	unsigned int transhdr_len;
	unsigned int dst_size = 0, kctx_len, dnents, temp, snents;
	unsigned int sub_type, assoclen = req->assoclen;
	unsigned int authsize = FUNC17(tfm);
	int error = -EINVAL;
	u8 *ivptr;
	gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL :
		GFP_ATOMIC;
	struct adapter *adap = FUNC24(FUNC4(tfm)->dev);

	sub_type = FUNC20(tfm);
	if (sub_type == CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309)
		assoclen -= 8;
	reqctx->b0_len = CCM_B0_SIZE + (assoclen ? CCM_AAD_FIELD_SIZE : 0);
	error = FUNC13(req);
	if (error)
		return FUNC2(error);

	error = FUNC5(reqctx->op, req, aeadctx, sub_type);
	if (error)
		goto err;
	dnents = FUNC26(req->dst, req->assoclen + req->cryptlen
			+ (reqctx->op ? -authsize : authsize),
			CHCR_DST_SG_SIZE, 0);
	dnents += MIN_CCM_SG; // For IV and B0
	dst_size = FUNC21(dnents);
	snents = FUNC26(req->src, req->assoclen + req->cryptlen,
			       CHCR_SRC_SG_SIZE, 0);
	snents += MIN_CCM_SG; //For B0
	kctx_len = FUNC25(aeadctx->enckey_len, 16) * 2;
	transhdr_len = FUNC1(kctx_len, dst_size);
	reqctx->imm = (transhdr_len + req->assoclen + req->cryptlen +
		       reqctx->b0_len) <= SGE_MAX_WR_LEN;
	temp = reqctx->imm ? FUNC25(req->assoclen + req->cryptlen +
				     reqctx->b0_len, 16) :
		(FUNC27(snents) *  8);
	transhdr_len += temp;
	transhdr_len = FUNC25(transhdr_len, 16);

	if (FUNC15(req, dnents, T6_MAX_AAD_SIZE -
				reqctx->b0_len, transhdr_len, reqctx->op)) {
		FUNC8(&adap->chcr_stats.fallback);
		FUNC12(req);
		return FUNC2(FUNC14(req, reqctx->op));
	}
	skb = FUNC7(transhdr_len,  flags);

	if (!skb) {
		error = -ENOMEM;
		goto err;
	}

	chcr_req = FUNC3(skb, transhdr_len);

	FUNC19(&chcr_req->sec_cpl, dst_size, req, reqctx->op);

	chcr_req->key_ctx.ctx_hdr = aeadctx->key_ctx_hdr;
	FUNC23(chcr_req->key_ctx.key, aeadctx->key, aeadctx->enckey_len);
	FUNC23(chcr_req->key_ctx.key + FUNC25(aeadctx->enckey_len, 16),
			aeadctx->key, aeadctx->enckey_len);

	phys_cpl = (struct cpl_rx_phys_dsgl *)((u8 *)(chcr_req + 1) + kctx_len);
	ivptr = (u8 *)(phys_cpl + 1) + dst_size;
	ulptx = (struct ulptx_sgl *)(ivptr + IV);
	error = FUNC9(req, ivptr, sub_type, reqctx->op, assoclen);
	if (error)
		goto dstmap_fail;
	FUNC10(req, phys_cpl, qid);
	FUNC11(req, ulptx);

	FUNC8(&adap->chcr_stats.aead_rqst);
	temp = sizeof(struct cpl_rx_phys_dsgl) + dst_size + IV +
		kctx_len + (reqctx->imm ? (req->assoclen + req->cryptlen +
		reqctx->b0_len) : 0);
	FUNC16(FUNC4(tfm), chcr_req, &req->base, reqctx->imm, 0,
		    transhdr_len, temp, 0);
	reqctx->skb = skb;

	return skb;
dstmap_fail:
	FUNC22(skb);
err:
	FUNC12(req);
	return FUNC2(error);
}