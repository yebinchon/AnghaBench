#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_crypto_req {void* user_arg; void* user_cb; } ;
struct cc_aead_ctx {scalar_t__ cipher_mode; scalar_t__ ctr_nonce; int auth_mode; int /*<<< orphan*/  drvdata; int /*<<< orphan*/  authsize; } ;
struct aead_request {scalar_t__ iv; int /*<<< orphan*/  base; int /*<<< orphan*/  cryptlen; TYPE_2__* dst; TYPE_2__* src; } ;
struct TYPE_3__ {int op_type; } ;
struct aead_req_ctx {scalar_t__ cipher_mode; scalar_t__ ctr_iv; scalar_t__ hw_iv_size; int /*<<< orphan*/  ccm_hdr_size; int /*<<< orphan*/  req_authsize; TYPE_1__ gen_ctx; int /*<<< orphan*/  assoclen; } ;
typedef  enum drv_crypto_direction { ____Placeholder_drv_crypto_direction } drv_crypto_direction ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_BLOCK_LEN ; 
 scalar_t__ CTR_RFC3686_BLOCK_SIZE ; 
 scalar_t__ CTR_RFC3686_IV_SIZE ; 
 scalar_t__ CTR_RFC3686_NONCE_SIZE ; 
 scalar_t__ DRV_CIPHER_CCM ; 
 scalar_t__ DRV_CIPHER_CTR ; 
 scalar_t__ DRV_CIPHER_GCTR ; 
 int DRV_CRYPTO_DIRECTION_ENCRYPT ; 
#define  DRV_HASH_NULL 131 
#define  DRV_HASH_SHA1 130 
#define  DRV_HASH_SHA256 129 
#define  DRV_HASH_XCBC_MAC 128 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int MAX_AEAD_PROCESS_SEQ ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 scalar_t__ cc_aead_complete ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,struct cc_hw_desc*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,struct cc_hw_desc*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,struct cc_hw_desc*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,struct cc_hw_desc*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct aead_request*,struct cc_hw_desc*,int*) ; 
 int /*<<< orphan*/  ccm_header_size_null ; 
 int FUNC9 (struct aead_request*) ; 
 int FUNC10 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct cc_aead_ctx* FUNC12 (struct crypto_aead*) ; 
 scalar_t__ FUNC13 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC14 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,char*,...) ; 
 struct device* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 scalar_t__ FUNC21 (struct cc_aead_ctx*,int,struct aead_request*) ; 

__attribute__((used)) static int FUNC22(struct aead_request *req,
			enum drv_crypto_direction direct)
{
	int rc = 0;
	int seq_len = 0;
	struct cc_hw_desc desc[MAX_AEAD_PROCESS_SEQ];
	struct crypto_aead *tfm = FUNC14(req);
	struct cc_aead_ctx *ctx = FUNC12(tfm);
	struct aead_req_ctx *areq_ctx = FUNC0(req);
	struct device *dev = FUNC18(ctx->drvdata);
	struct cc_crypto_req cc_req = {};

	FUNC16(dev, "%s context=%p req=%p iv=%p src=%p src_ofs=%d dst=%p dst_ofs=%d cryptolen=%d\n",
		((direct == DRV_CRYPTO_DIRECTION_ENCRYPT) ? "Enc" : "Dec"),
		ctx, req, req->iv, FUNC20(req->src), req->src->offset,
		FUNC20(req->dst), req->dst->offset, req->cryptlen);

	/* STAT_PHASE_0: Init and sanity checks */

	/* Check data length according to mode */
	if (FUNC21(ctx, direct, req)) {
		FUNC17(dev, "Unsupported crypt/assoc len %d/%d.\n",
			req->cryptlen, areq_ctx->assoclen);
		FUNC15(tfm, CRYPTO_TFM_RES_BAD_BLOCK_LEN);
		return -EINVAL;
	}

	/* Setup request structure */
	cc_req.user_cb = (void *)cc_aead_complete;
	cc_req.user_arg = (void *)req;

	/* Setup request context */
	areq_ctx->gen_ctx.op_type = direct;
	areq_ctx->req_authsize = ctx->authsize;
	areq_ctx->cipher_mode = ctx->cipher_mode;

	/* STAT_PHASE_1: Map buffers */

	if (ctx->cipher_mode == DRV_CIPHER_CTR) {
		/* Build CTR IV - Copy nonce from last 4 bytes in
		 * CTR key to first 4 bytes in CTR IV
		 */
		FUNC19(areq_ctx->ctr_iv, ctx->ctr_nonce,
		       CTR_RFC3686_NONCE_SIZE);
		FUNC19(areq_ctx->ctr_iv + CTR_RFC3686_NONCE_SIZE, req->iv,
		       CTR_RFC3686_IV_SIZE);
		/* Initialize counter portion of counter block */
		*(__be32 *)(areq_ctx->ctr_iv + CTR_RFC3686_NONCE_SIZE +
			    CTR_RFC3686_IV_SIZE) = FUNC11(1);

		/* Replace with counter iv */
		req->iv = areq_ctx->ctr_iv;
		areq_ctx->hw_iv_size = CTR_RFC3686_BLOCK_SIZE;
	} else if ((ctx->cipher_mode == DRV_CIPHER_CCM) ||
		   (ctx->cipher_mode == DRV_CIPHER_GCTR)) {
		areq_ctx->hw_iv_size = AES_BLOCK_SIZE;
		if (areq_ctx->ctr_iv != req->iv) {
			FUNC19(areq_ctx->ctr_iv, req->iv,
			       FUNC13(tfm));
			req->iv = areq_ctx->ctr_iv;
		}
	}  else {
		areq_ctx->hw_iv_size = FUNC13(tfm);
	}

	if (ctx->cipher_mode == DRV_CIPHER_CCM) {
		rc = FUNC9(req);
		if (rc) {
			FUNC16(dev, "config_ccm_adata() returned with a failure %d!",
				rc);
			goto exit;
		}
	} else {
		areq_ctx->ccm_hdr_size = ccm_header_size_null;
	}

	if (ctx->cipher_mode == DRV_CIPHER_GCTR) {
		rc = FUNC10(req);
		if (rc) {
			FUNC16(dev, "config_gcm_context() returned with a failure %d!",
				rc);
			goto exit;
		}
	}

	rc = FUNC4(ctx->drvdata, req);
	if (rc) {
		FUNC17(dev, "map_request() failed\n");
		goto exit;
	}

	/* STAT_PHASE_2: Create sequence */

	/* Load MLLI tables to SRAM if necessary */
	FUNC5(req, desc, &seq_len);

	/*TODO: move seq len by reference */
	switch (ctx->auth_mode) {
	case DRV_HASH_SHA1:
	case DRV_HASH_SHA256:
		FUNC3(req, desc, &seq_len);
		break;
	case DRV_HASH_XCBC_MAC:
		FUNC8(req, desc, &seq_len);
		break;
	case DRV_HASH_NULL:
		if (ctx->cipher_mode == DRV_CIPHER_CCM)
			FUNC1(req, desc, &seq_len);
		if (ctx->cipher_mode == DRV_CIPHER_GCTR)
			FUNC2(req, desc, &seq_len);
		break;
	default:
		FUNC17(dev, "Unsupported authenc (%d)\n", ctx->auth_mode);
		FUNC7(dev, req);
		rc = -ENOTSUPP;
		goto exit;
	}

	/* STAT_PHASE_3: Lock HW and push sequence */

	rc = FUNC6(ctx->drvdata, &cc_req, desc, seq_len, &req->base);

	if (rc != -EINPROGRESS && rc != -EBUSY) {
		FUNC17(dev, "send_request() failed (rc=%d)\n", rc);
		FUNC7(dev, req);
	}

exit:
	return rc;
}