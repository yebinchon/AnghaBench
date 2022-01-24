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
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_ahash {int /*<<< orphan*/  base; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int /*<<< orphan*/  drvdata; int /*<<< orphan*/  hash_len; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  hw_mode; int /*<<< orphan*/  inter_digestsize; scalar_t__ is_hmac; } ;
struct cc_crypto_req {struct ahash_request* user_arg; int /*<<< orphan*/  user_cb; } ;
struct ahash_request {unsigned int nbytes; int /*<<< orphan*/  base; struct scatterlist* src; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_bytes_len_dma_addr; int /*<<< orphan*/  digest_buff_dma_addr; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int CC_MAX_HASH_SEQ_LEN ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE1 ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ahash_req_ctx*,struct scatterlist*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 size_t FUNC4 (struct cc_hw_desc*,struct cc_hash_ctx*,struct ahash_req_ctx*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct ahash_req_ctx*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 int /*<<< orphan*/  cc_update_complete ; 
 struct cc_hash_ctx* FUNC8 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC9 (struct ahash_request*) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*,...) ; 
 struct device* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC15 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC19 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct ahash_request *req)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC9(req);
	struct cc_hash_ctx *ctx = FUNC8(tfm);
	unsigned int block_size = FUNC10(&tfm->base);
	struct scatterlist *src = req->src;
	unsigned int nbytes = req->nbytes;
	struct device *dev = FUNC13(ctx->drvdata);
	struct cc_crypto_req cc_req = {};
	struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
	u32 idx = 0;
	int rc;
	gfp_t flags = FUNC1(&req->base);

	FUNC11(dev, "===== %s-update (%d) ====\n", ctx->is_hmac ?
		"hmac" : "hash", nbytes);

	if (nbytes == 0) {
		/* no real updates required */
		return 0;
	}

	rc = FUNC2(ctx->drvdata, state, src, nbytes,
					block_size, flags);
	if (rc) {
		if (rc == 1) {
			FUNC11(dev, " data size not require HW update %x\n",
				nbytes);
			/* No hardware updates are required */
			return 0;
		}
		FUNC12(dev, "map_ahash_request_update() failed\n");
		return -ENOMEM;
	}

	if (FUNC3(dev, state, ctx)) {
		FUNC12(dev, "map_ahash_source() failed\n");
		FUNC6(dev, state, src, true);
		return -EINVAL;
	}

	/* Setup request structure */
	cc_req.user_cb = cc_update_complete;
	cc_req.user_arg = req;

	idx = FUNC4(desc, ctx, state, idx);

	/* store the hash digest result in context */
	FUNC14(&desc[idx]);
	FUNC17(&desc[idx], ctx->hw_mode, ctx->hash_mode);
	FUNC15(&desc[idx], state->digest_buff_dma_addr,
		      ctx->inter_digestsize, NS_BIT, 0);
	FUNC16(&desc[idx], S_HASH_to_DOUT);
	FUNC19(&desc[idx], SETUP_WRITE_STATE0);
	idx++;

	/* store current hash length in context */
	FUNC14(&desc[idx]);
	FUNC17(&desc[idx], ctx->hw_mode, ctx->hash_mode);
	FUNC15(&desc[idx], state->digest_bytes_len_dma_addr,
		      ctx->hash_len, NS_BIT, 1);
	FUNC18(ctx->drvdata, &desc[idx]);
	FUNC16(&desc[idx], S_HASH_to_DOUT);
	FUNC19(&desc[idx], SETUP_WRITE_STATE1);
	idx++;

	rc = FUNC5(ctx->drvdata, &cc_req, desc, idx, &req->base);
	if (rc != -EINPROGRESS && rc != -EBUSY) {
		FUNC12(dev, "send_request() failed (rc=%d)\n", rc);
		FUNC6(dev, state, src, true);
		FUNC7(dev, state, ctx);
	}
	return rc;
}