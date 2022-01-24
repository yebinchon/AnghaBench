#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct cipher_wr_param {unsigned short qid; int bytes; struct ablkcipher_request* req; } ;
struct chcr_wr {int dummy; } ;
struct chcr_blkcipher_req_ctx {int processed; int imm; unsigned int iv; unsigned short op; int last_req_len; scalar_t__ dst_ofst; scalar_t__ src_ofst; int /*<<< orphan*/  dstsg; int /*<<< orphan*/  srcsg; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct ablkcipher_request {int nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; int /*<<< orphan*/  info; } ;
struct ablk_ctx {scalar_t__ enckey_len; int /*<<< orphan*/  sw_cipher; int /*<<< orphan*/  nonce; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_8__ {TYPE_3__ lldi; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ablk_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int AES_BLOCK_SIZE ; 
 unsigned int AES_MIN_KEY_SIZE ; 
 int /*<<< orphan*/  CHCR_DST_SG_SIZE ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ CRYPTO_ALG_SUB_TYPE_CTR ; 
 scalar_t__ CRYPTO_ALG_SUB_TYPE_CTR_RFC3686 ; 
 unsigned int CTR_RFC3686_IV_SIZE ; 
 unsigned int CTR_RFC3686_NONCE_SIZE ; 
 int EINVAL ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 unsigned int IV ; 
 int FUNC4 (struct sk_buff*) ; 
 unsigned int SGE_MAX_WR_LEN ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 struct chcr_blkcipher_req_ctx* FUNC6 (struct ablkcipher_request*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_ablkcipher*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct ablkcipher_request*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,unsigned short) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct sk_buff* FUNC14 (struct cipher_wr_param*) ; 
 int FUNC15 (struct crypto_ablkcipher*) ; 
 unsigned int FUNC16 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC17 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC18 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC20 (unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (char*,scalar_t__,int,unsigned int) ; 
 int FUNC23 (int,int) ; 
 unsigned int FUNC24 (scalar_t__,int) ; 
 unsigned int FUNC25 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int) ; 

__attribute__((used)) static int FUNC27(struct ablkcipher_request *req,
				  unsigned short qid,
				  struct sk_buff **skb,
				  unsigned short op_type)
{
	struct crypto_ablkcipher *tfm = FUNC17(req);
	unsigned int ivsize = FUNC16(tfm);
	struct chcr_blkcipher_req_ctx *reqctx = FUNC6(req);
	struct ablk_ctx *ablkctx = FUNC0(FUNC8(tfm));
	struct	cipher_wr_param wrparam;
	int bytes, err = -EINVAL;

	reqctx->processed = 0;
	if (!req->info)
		goto error;
	if ((ablkctx->enckey_len == 0) || (ivsize > AES_BLOCK_SIZE) ||
	    (req->nbytes == 0) ||
	    (req->nbytes % FUNC15(tfm))) {
		FUNC22("AES: Invalid value of Key Len %d nbytes %d IV Len %d\n",
		       ablkctx->enckey_len, req->nbytes, ivsize);
		goto error;
	}

	err = FUNC9(&FUNC5(FUNC8(tfm))->lldi.pdev->dev, req);
	if (err)
		goto error;
	if (req->nbytes < (SGE_MAX_WR_LEN - (sizeof(struct chcr_wr) +
					    AES_MIN_KEY_SIZE +
					    sizeof(struct cpl_rx_phys_dsgl) +
					/*Min dsgl size*/
					    32))) {
		/* Can be sent as Imm*/
		unsigned int dnents = 0, transhdr_len, phys_dsgl, kctx_len;

		dnents = FUNC25(req->dst, req->nbytes,
				       CHCR_DST_SG_SIZE, 0);
		phys_dsgl = FUNC20(dnents);
		kctx_len = FUNC24(ablkctx->enckey_len, 16);
		transhdr_len = FUNC1(kctx_len, phys_dsgl);
		reqctx->imm = (transhdr_len + IV + req->nbytes) <=
			SGE_MAX_WR_LEN;
		bytes = IV + req->nbytes;

	} else {
		reqctx->imm = 0;
	}

	if (!reqctx->imm) {
		bytes = FUNC12(req->src, req->dst, 0,
					  FUNC2(ablkctx->enckey_len),
					  0, 0);
		if ((bytes + reqctx->processed) >= req->nbytes)
			bytes  = req->nbytes - reqctx->processed;
		else
			bytes = FUNC23(bytes, 16);
	} else {
		bytes = req->nbytes;
	}
	if (FUNC19(FUNC18(tfm)) ==
	    CRYPTO_ALG_SUB_TYPE_CTR) {
		bytes = FUNC7(req->info, bytes);
	}
	if (FUNC19(FUNC18(tfm)) ==
	    CRYPTO_ALG_SUB_TYPE_CTR_RFC3686) {
		FUNC21(reqctx->iv, ablkctx->nonce, CTR_RFC3686_NONCE_SIZE);
		FUNC21(reqctx->iv + CTR_RFC3686_NONCE_SIZE, req->info,
				CTR_RFC3686_IV_SIZE);

		/* initialize counter portion of counter block */
		*(__be32 *)(reqctx->iv + CTR_RFC3686_NONCE_SIZE +
			CTR_RFC3686_IV_SIZE) = FUNC13(1);

	} else {

		FUNC21(reqctx->iv, req->info, IV);
	}
	if (FUNC26(bytes == 0)) {
		FUNC10(&FUNC5(FUNC8(tfm))->lldi.pdev->dev,
				      req);
		err = FUNC11(ablkctx->sw_cipher,
					   req->base.flags,
					   req->src,
					   req->dst,
					   req->nbytes,
					   reqctx->iv,
					   op_type);
		goto error;
	}
	reqctx->op = op_type;
	reqctx->srcsg = req->src;
	reqctx->dstsg = req->dst;
	reqctx->src_ofst = 0;
	reqctx->dst_ofst = 0;
	wrparam.qid = qid;
	wrparam.req = req;
	wrparam.bytes = bytes;
	*skb = FUNC14(&wrparam);
	if (FUNC3(*skb)) {
		err = FUNC4(*skb);
		goto unmap;
	}
	reqctx->processed = bytes;
	reqctx->last_req_len = bytes;

	return 0;
unmap:
	FUNC10(&FUNC5(FUNC8(tfm))->lldi.pdev->dev, req);
error:
	return err;
}