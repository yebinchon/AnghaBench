#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u32 ;
struct device {int dummy; } ;
struct crypto_ahash {int /*<<< orphan*/  base; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {scalar_t__ hw_mode; int /*<<< orphan*/  drvdata; int /*<<< orphan*/  inter_digestsize; } ;
struct cc_crypto_req {void* user_arg; void* user_cb; } ;
struct ahash_request {int /*<<< orphan*/  src; int /*<<< orphan*/  base; int /*<<< orphan*/  nbytes; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_buff_dma_addr; int /*<<< orphan*/  xcbc_count; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int CC_MAX_HASH_SEQ_LEN ; 
 int /*<<< orphan*/  DIN_AES_DOUT ; 
 scalar_t__ DRV_CIPHER_XCBC_MAC ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  S_AES_to_DOUT ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ahash_req_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_req_ctx*,struct cc_hash_ctx*,int /*<<< orphan*/ ,struct cc_hw_desc*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahash_request*,struct cc_hw_desc*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_request*,struct cc_hw_desc*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 scalar_t__ cc_update_complete ; 
 struct cc_hash_ctx* FUNC10 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC11 (struct ahash_request*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,char*,...) ; 
 struct device* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC17 (struct cc_hw_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC21 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct ahash_request *req)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC11(req);
	struct cc_hash_ctx *ctx = FUNC10(tfm);
	struct device *dev = FUNC15(ctx->drvdata);
	unsigned int block_size = FUNC12(&tfm->base);
	struct cc_crypto_req cc_req = {};
	struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
	int rc;
	u32 idx = 0;
	gfp_t flags = FUNC1(&req->base);

	if (req->nbytes == 0) {
		/* no real updates required */
		return 0;
	}

	state->xcbc_count++;

	rc = FUNC2(ctx->drvdata, state, req->src,
					req->nbytes, block_size, flags);
	if (rc) {
		if (rc == 1) {
			FUNC13(dev, " data size not require HW update %x\n",
				req->nbytes);
			/* No hardware updates are required */
			return 0;
		}
		FUNC14(dev, "map_ahash_request_update() failed\n");
		return -ENOMEM;
	}

	if (FUNC3(dev, state, ctx)) {
		FUNC14(dev, "map_ahash_source() failed\n");
		return -EINVAL;
	}

	if (ctx->hw_mode == DRV_CIPHER_XCBC_MAC)
		FUNC7(req, desc, &idx);
	else
		FUNC6(req, desc, &idx);

	FUNC5(state, ctx, DIN_AES_DOUT, desc, true, &idx);

	/* store the hash digest result in context */
	FUNC16(&desc[idx]);
	FUNC17(&desc[idx], ctx->hw_mode);
	FUNC18(&desc[idx], state->digest_buff_dma_addr,
		      ctx->inter_digestsize, NS_BIT, 1);
	FUNC20(ctx->drvdata, &desc[idx]);
	FUNC19(&desc[idx], S_AES_to_DOUT);
	FUNC21(&desc[idx], SETUP_WRITE_STATE0);
	idx++;

	/* Setup request structure */
	cc_req.user_cb = (void *)cc_update_complete;
	cc_req.user_arg = (void *)req;

	rc = FUNC4(ctx->drvdata, &cc_req, desc, idx, &req->base);
	if (rc != -EINPROGRESS && rc != -EBUSY) {
		FUNC14(dev, "send_request() failed (rc=%d)\n", rc);
		FUNC8(dev, state, req->src, true);
		FUNC9(dev, state, ctx);
	}
	return rc;
}