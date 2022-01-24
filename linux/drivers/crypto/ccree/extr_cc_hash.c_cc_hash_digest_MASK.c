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
struct cc_hash_ctx {int is_hmac; int /*<<< orphan*/  drvdata; int /*<<< orphan*/  hash_len; int /*<<< orphan*/  hw_mode; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  inter_digestsize; } ;
struct cc_crypto_req {struct ahash_request* user_arg; int /*<<< orphan*/  user_cb; } ;
struct ahash_request {unsigned int nbytes; int /*<<< orphan*/  base; int /*<<< orphan*/ * result; struct scatterlist* src; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_buff_dma_addr; int /*<<< orphan*/  digest_bytes_len_dma_addr; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  cc_sram_addr_t ;

/* Variables and functions */
 int CC_MAX_HASH_SEQ_LEN ; 
 int /*<<< orphan*/  DIN_HASH ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DO_PAD ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HASH_PADDING_ENABLED ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE1 ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  cc_digest_complete ; 
 int FUNC1 (struct cc_hw_desc*,struct ahash_request*,int) ; 
 int FUNC2 (struct cc_hw_desc*,struct ahash_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct ahash_req_ctx*,struct scatterlist*,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 scalar_t__ FUNC8 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ahash_req_ctx*,struct cc_hash_ctx*,int /*<<< orphan*/ ,struct cc_hw_desc*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct ahash_req_ctx*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cc_hash_ctx* FUNC14 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC15 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC16 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct device*,char*,...) ; 
 struct device* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC21 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC31(struct ahash_request *req)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC16(req);
	struct cc_hash_ctx *ctx = FUNC14(tfm);
	u32 digestsize = FUNC15(tfm);
	struct scatterlist *src = req->src;
	unsigned int nbytes = req->nbytes;
	u8 *result = req->result;
	struct device *dev = FUNC19(ctx->drvdata);
	bool is_hmac = ctx->is_hmac;
	struct cc_crypto_req cc_req = {};
	struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
	cc_sram_addr_t larval_digest_addr =
		FUNC5(ctx->drvdata, ctx->hash_mode);
	int idx = 0;
	int rc = 0;
	gfp_t flags = FUNC3(&req->base);

	FUNC17(dev, "===== %s-digest (%d) ====\n", is_hmac ? "hmac" : "hash",
		nbytes);

	FUNC4(dev, state, ctx);

	if (FUNC7(dev, state, ctx)) {
		FUNC18(dev, "map_ahash_source() failed\n");
		return -ENOMEM;
	}

	if (FUNC8(dev, state, digestsize)) {
		FUNC18(dev, "map_ahash_digest() failed\n");
		FUNC12(dev, state, ctx);
		return -ENOMEM;
	}

	if (FUNC6(ctx->drvdata, state, src, nbytes, 1,
				      flags)) {
		FUNC18(dev, "map_ahash_request_final() failed\n");
		FUNC13(dev, state, digestsize, result);
		FUNC12(dev, state, ctx);
		return -ENOMEM;
	}

	/* Setup request structure */
	cc_req.user_cb = cc_digest_complete;
	cc_req.user_arg = req;

	/* If HMAC then load hash IPAD xor key, if HASH then load initial
	 * digest
	 */
	FUNC20(&desc[idx]);
	FUNC29(&desc[idx], ctx->hw_mode, ctx->hash_mode);
	if (is_hmac) {
		FUNC26(&desc[idx], DMA_DLLI, state->digest_buff_dma_addr,
			     ctx->inter_digestsize, NS_BIT);
	} else {
		FUNC25(&desc[idx], larval_digest_addr,
			     ctx->inter_digestsize);
	}
	FUNC28(&desc[idx], S_DIN_to_HASH);
	FUNC30(&desc[idx], SETUP_LOAD_STATE0);
	idx++;

	/* Load the hash current length */
	FUNC20(&desc[idx]);
	FUNC29(&desc[idx], ctx->hw_mode, ctx->hash_mode);

	if (is_hmac) {
		FUNC26(&desc[idx], DMA_DLLI,
			     state->digest_bytes_len_dma_addr,
			     ctx->hash_len, NS_BIT);
	} else {
		FUNC24(&desc[idx], 0, ctx->hash_len);
		if (nbytes)
			FUNC21(&desc[idx], HASH_PADDING_ENABLED);
		else
			FUNC22(&desc[idx], DO_PAD);
	}
	FUNC28(&desc[idx], S_DIN_to_HASH);
	FUNC30(&desc[idx], SETUP_LOAD_KEY0);
	idx++;

	FUNC10(state, ctx, DIN_HASH, desc, false, &idx);

	if (is_hmac) {
		/* HW last hash block padding (aka. "DO_PAD") */
		FUNC20(&desc[idx]);
		FUNC23(&desc[idx], ctx->hw_mode);
		FUNC27(&desc[idx], state->digest_buff_dma_addr,
			      ctx->hash_len, NS_BIT, 0);
		FUNC28(&desc[idx], S_HASH_to_DOUT);
		FUNC30(&desc[idx], SETUP_WRITE_STATE1);
		FUNC22(&desc[idx], DO_PAD);
		idx++;

		idx = FUNC1(desc, req, idx);
	}

	idx = FUNC2(desc, req, idx);

	rc = FUNC9(ctx->drvdata, &cc_req, desc, idx, &req->base);
	if (rc != -EINPROGRESS && rc != -EBUSY) {
		FUNC18(dev, "send_request() failed (rc=%d)\n", rc);
		FUNC11(dev, state, src, true);
		FUNC13(dev, state, digestsize, result);
		FUNC12(dev, state, ctx);
	}
	return rc;
}