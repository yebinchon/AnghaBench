#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  keylen; } ;
struct cc_hash_ctx {scalar_t__ hw_mode; int /*<<< orphan*/  drvdata; TYPE_1__ key_params; } ;
struct cc_crypto_req {void* user_arg; void* user_cb; } ;
struct ahash_request {scalar_t__ nbytes; int /*<<< orphan*/  result; int /*<<< orphan*/  src; int /*<<< orphan*/  base; } ;
struct ahash_req_ctx {scalar_t__ xcbc_count; int /*<<< orphan*/  digest_result_dma_addr; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CC_AES_128_BIT_KEY_SIZE ; 
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
 int /*<<< orphan*/  S_DIN_to_AES ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ cc_hash_complete ; 
 int FUNC2 (struct ahash_request*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct ahash_req_ctx*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 scalar_t__ FUNC5 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_req_ctx*,struct cc_hash_ctx*,int /*<<< orphan*/ ,struct cc_hw_desc*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahash_request*,struct cc_hw_desc*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahash_request*,struct cc_hw_desc*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cc_hash_ctx* FUNC13 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC14 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC15 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,char*,...) ; 
 struct device* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC20 (struct cc_hw_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC22 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC26 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct ahash_request *req)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC15(req);
	struct cc_hash_ctx *ctx = FUNC13(tfm);
	struct device *dev = FUNC18(ctx->drvdata);
	struct cc_crypto_req cc_req = {};
	struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
	int idx = 0;
	int rc = 0;
	u32 key_len = 0;
	u32 digestsize = FUNC14(tfm);
	gfp_t flags = FUNC1(&req->base);

	FUNC16(dev, "===== finup xcbc(%d) ====\n", req->nbytes);
	if (state->xcbc_count > 0 && req->nbytes == 0) {
		FUNC16(dev, "No data to update. Call to fdx_mac_final\n");
		return FUNC2(req);
	}

	if (FUNC4(dev, state, ctx)) {
		FUNC17(dev, "map_ahash_source() failed\n");
		return -EINVAL;
	}

	if (FUNC3(ctx->drvdata, state, req->src,
				      req->nbytes, 1, flags)) {
		FUNC17(dev, "map_ahash_request_final() failed\n");
		FUNC11(dev, state, ctx);
		return -ENOMEM;
	}
	if (FUNC5(dev, state, digestsize)) {
		FUNC17(dev, "map_ahash_digest() failed\n");
		FUNC10(dev, state, req->src, true);
		FUNC11(dev, state, ctx);
		return -ENOMEM;
	}

	/* Setup request structure */
	cc_req.user_cb = (void *)cc_hash_complete;
	cc_req.user_arg = (void *)req;

	if (ctx->hw_mode == DRV_CIPHER_XCBC_MAC) {
		key_len = CC_AES_128_BIT_KEY_SIZE;
		FUNC9(req, desc, &idx);
	} else {
		key_len = ctx->key_params.keylen;
		FUNC8(req, desc, &idx);
	}

	if (req->nbytes == 0) {
		FUNC19(&desc[idx]);
		FUNC20(&desc[idx], ctx->hw_mode);
		FUNC24(&desc[idx], key_len);
		FUNC21(&desc[idx]);
		FUNC23(&desc[idx], S_DIN_to_AES);
		idx++;
	} else {
		FUNC7(state, ctx, DIN_AES_DOUT, desc, false, &idx);
	}

	/* Get final MAC result */
	FUNC19(&desc[idx]);
	/* TODO */
	FUNC22(&desc[idx], state->digest_result_dma_addr,
		      digestsize, NS_BIT, 1);
	FUNC25(ctx->drvdata, &desc[idx]);
	FUNC23(&desc[idx], S_AES_to_DOUT);
	FUNC26(&desc[idx], SETUP_WRITE_STATE0);
	FUNC20(&desc[idx], ctx->hw_mode);
	idx++;

	rc = FUNC6(ctx->drvdata, &cc_req, desc, idx, &req->base);
	if (rc != -EINPROGRESS && rc != -EBUSY) {
		FUNC17(dev, "send_request() failed (rc=%d)\n", rc);
		FUNC10(dev, state, req->src, true);
		FUNC12(dev, state, digestsize, req->result);
		FUNC11(dev, state, ctx);
	}
	return rc;
}