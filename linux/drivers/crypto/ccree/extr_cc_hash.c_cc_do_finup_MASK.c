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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int is_hmac; int /*<<< orphan*/  drvdata; int /*<<< orphan*/  hash_len; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  hw_mode; } ;
struct cc_crypto_req {struct ahash_request* user_arg; int /*<<< orphan*/  user_cb; } ;
struct ahash_request {unsigned int nbytes; int /*<<< orphan*/  base; int /*<<< orphan*/ * result; struct scatterlist* src; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_bytes_len_dma_addr; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int CC_MAX_HASH_SEQ_LEN ; 
 int /*<<< orphan*/  DO_PAD ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE1 ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 unsigned int FUNC1 (struct cc_hw_desc*,struct ahash_request*,unsigned int) ; 
 unsigned int FUNC2 (struct cc_hw_desc*,struct ahash_request*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cc_hash_complete ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct ahash_req_ctx*,struct scatterlist*,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 scalar_t__ FUNC6 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct cc_hw_desc*,struct cc_hash_ctx*,struct ahash_req_ctx*,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct ahash_req_ctx*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cc_hash_ctx* FUNC12 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC14 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,char*,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,...) ; 
 struct device* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC19 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct ahash_request *req, bool update)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC14(req);
	struct cc_hash_ctx *ctx = FUNC12(tfm);
	u32 digestsize = FUNC13(tfm);
	struct scatterlist *src = req->src;
	unsigned int nbytes = req->nbytes;
	u8 *result = req->result;
	struct device *dev = FUNC17(ctx->drvdata);
	bool is_hmac = ctx->is_hmac;
	struct cc_crypto_req cc_req = {};
	struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
	unsigned int idx = 0;
	int rc;
	gfp_t flags = FUNC3(&req->base);

	FUNC15(dev, "===== %s-%s (%d) ====\n", is_hmac ? "hmac" : "hash",
		update ? "finup" : "final", nbytes);

	if (FUNC5(dev, state, ctx)) {
		FUNC16(dev, "map_ahash_source() failed\n");
		return -EINVAL;
	}

	if (FUNC4(ctx->drvdata, state, src, nbytes, update,
				      flags)) {
		FUNC16(dev, "map_ahash_request_final() failed\n");
		FUNC10(dev, state, ctx);
		return -ENOMEM;
	}
	if (FUNC6(dev, state, digestsize)) {
		FUNC16(dev, "map_ahash_digest() failed\n");
		FUNC9(dev, state, src, true);
		FUNC10(dev, state, ctx);
		return -ENOMEM;
	}

	/* Setup request structure */
	cc_req.user_cb = cc_hash_complete;
	cc_req.user_arg = req;

	idx = FUNC7(desc, ctx, state, idx);

	/* Pad the hash */
	FUNC18(&desc[idx]);
	FUNC19(&desc[idx], DO_PAD);
	FUNC22(&desc[idx], ctx->hw_mode, ctx->hash_mode);
	FUNC20(&desc[idx], state->digest_bytes_len_dma_addr,
		      ctx->hash_len, NS_BIT, 0);
	FUNC23(&desc[idx], SETUP_WRITE_STATE1);
	FUNC21(&desc[idx], S_HASH_to_DOUT);
	idx++;

	if (is_hmac)
		idx = FUNC1(desc, req, idx);

	idx = FUNC2(desc, req, idx);

	rc = FUNC8(ctx->drvdata, &cc_req, desc, idx, &req->base);
	if (rc != -EINPROGRESS && rc != -EBUSY) {
		FUNC16(dev, "send_request() failed (rc=%d)\n", rc);
		FUNC9(dev, state, src, true);
		FUNC11(dev, state, digestsize, result);
		FUNC10(dev, state, ctx);
	}
	return rc;
}