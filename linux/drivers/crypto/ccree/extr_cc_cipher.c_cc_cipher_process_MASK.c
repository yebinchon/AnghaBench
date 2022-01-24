#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct skcipher_request {unsigned int cryptlen; int /*<<< orphan*/  base; void* iv; struct scatterlist* src; struct scatterlist* dst; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_6__ {int op_type; } ;
struct cipher_req_ctx {int /*<<< orphan*/  iv; TYPE_3__ gen_ctx; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_4__ {int is_cpp; int /*<<< orphan*/  slot; int /*<<< orphan*/  alg; } ;
struct cc_crypto_req {TYPE_1__ cpp; void* user_arg; void* user_cb; } ;
struct TYPE_5__ {int /*<<< orphan*/  slot; int /*<<< orphan*/  alg; } ;
struct cc_cipher_ctx {scalar_t__ key_type; int /*<<< orphan*/  drvdata; TYPE_2__ cpp; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum drv_crypto_direction { ____Placeholder_drv_crypto_direction } drv_crypto_direction ;

/* Variables and functions */
 scalar_t__ CC_POLICY_PROTECTED_KEY ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_BLOCK_LEN ; 
 int DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int MAX_ABLKCIPHER_SEQ_LEN ; 
 scalar_t__ cc_cipher_complete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cipher_req_ctx*,unsigned int,unsigned int,int /*<<< orphan*/ ,struct scatterlist*,struct scatterlist*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_tfm*,struct cipher_req_ctx*,struct scatterlist*,struct scatterlist*,unsigned int,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_tfm*,struct cipher_req_ctx*,unsigned int,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_tfm*,struct cipher_req_ctx*,struct scatterlist*,struct scatterlist*,unsigned int,struct skcipher_request*,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_tfm*,struct cipher_req_ctx*,unsigned int,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_tfm*,struct cipher_req_ctx*,unsigned int,unsigned int,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct cipher_req_ctx*,unsigned int,struct scatterlist*,struct scatterlist*) ; 
 unsigned int FUNC9 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC10 (struct skcipher_request*) ; 
 struct crypto_tfm* FUNC11 (struct crypto_skcipher*) ; 
 struct cc_cipher_ctx* FUNC12 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_tfm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,char*,char*,struct skcipher_request*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,char*,...) ; 
 struct device* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct cipher_req_ctx* FUNC19 (struct skcipher_request*) ; 
 scalar_t__ FUNC20 (struct cc_cipher_ctx*,unsigned int) ; 

__attribute__((used)) static int FUNC21(struct skcipher_request *req,
			     enum drv_crypto_direction direction)
{
	struct crypto_skcipher *sk_tfm = FUNC10(req);
	struct crypto_tfm *tfm = FUNC11(sk_tfm);
	struct cipher_req_ctx *req_ctx = FUNC19(req);
	unsigned int ivsize = FUNC9(sk_tfm);
	struct scatterlist *dst = req->dst;
	struct scatterlist *src = req->src;
	unsigned int nbytes = req->cryptlen;
	void *iv = req->iv;
	struct cc_cipher_ctx *ctx_p = FUNC12(tfm);
	struct device *dev = FUNC16(ctx_p->drvdata);
	struct cc_hw_desc desc[MAX_ABLKCIPHER_SEQ_LEN];
	struct cc_crypto_req cc_req = {};
	int rc;
	unsigned int seq_len = 0;
	gfp_t flags = FUNC0(&req->base);

	FUNC14(dev, "%s req=%p iv=%p nbytes=%d\n",
		((direction == DRV_CRYPTO_DIRECTION_ENCRYPT) ?
		"Encrypt" : "Decrypt"), req, iv, nbytes);

	/* STAT_PHASE_0: Init and sanity checks */

	/* TODO: check data length according to mode */
	if (FUNC20(ctx_p, nbytes)) {
		FUNC15(dev, "Unsupported data size %d.\n", nbytes);
		FUNC13(tfm, CRYPTO_TFM_RES_BAD_BLOCK_LEN);
		rc = -EINVAL;
		goto exit_process;
	}
	if (nbytes == 0) {
		/* No data to process is valid */
		rc = 0;
		goto exit_process;
	}

	/* The IV we are handed may be allocted from the stack so
	 * we must copy it to a DMAable buffer before use.
	 */
	req_ctx->iv = FUNC17(iv, ivsize, flags);
	if (!req_ctx->iv) {
		rc = -ENOMEM;
		goto exit_process;
	}

	/* Setup request structure */
	cc_req.user_cb = (void *)cc_cipher_complete;
	cc_req.user_arg = (void *)req;

	/* Setup CPP operation details */
	if (ctx_p->key_type == CC_POLICY_PROTECTED_KEY) {
		cc_req.cpp.is_cpp = true;
		cc_req.cpp.alg = ctx_p->cpp.alg;
		cc_req.cpp.slot = ctx_p->cpp.slot;
	}

	/* Setup request context */
	req_ctx->gen_ctx.op_type = direction;

	/* STAT_PHASE_1: Map buffers */

	rc = FUNC1(ctx_p->drvdata, req_ctx, ivsize, nbytes,
				      req_ctx->iv, src, dst, flags);
	if (rc) {
		FUNC15(dev, "map_request() failed\n");
		goto exit_process;
	}

	/* STAT_PHASE_2: Create sequence */

	/* Setup IV and XEX key used */
	FUNC7(tfm, req_ctx, ivsize, nbytes, desc, &seq_len);
	/* Setup MLLI line, if needed */
	FUNC5(tfm, req_ctx, dst, src, nbytes, req, desc, &seq_len);
	/* Setup key */
	FUNC4(tfm, req_ctx, nbytes, desc, &seq_len);
	/* Data processing */
	FUNC3(tfm, req_ctx, dst, src, nbytes, desc, &seq_len);
	/* Read next IV */
	FUNC6(tfm, req_ctx, ivsize, desc, &seq_len);

	/* STAT_PHASE_3: Lock HW and push sequence */

	rc = FUNC2(ctx_p->drvdata, &cc_req, desc, seq_len,
			     &req->base);
	if (rc != -EINPROGRESS && rc != -EBUSY) {
		/* Failed to send the request or request completed
		 * synchronously
		 */
		FUNC8(dev, req_ctx, ivsize, src, dst);
	}

exit_process:
	if (rc != -EINPROGRESS && rc != -EBUSY) {
		FUNC18(req_ctx->iv);
	}

	return rc;
}