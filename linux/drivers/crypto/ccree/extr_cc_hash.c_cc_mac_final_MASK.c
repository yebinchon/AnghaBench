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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_2__ {int keylen; } ;
struct cc_hash_ctx {scalar_t__ hw_mode; int /*<<< orphan*/  drvdata; scalar_t__ opad_tmp_keys_dma_addr; TYPE_1__ key_params; } ;
struct cc_crypto_req {void* user_arg; void* user_cb; } ;
struct ahash_request {int /*<<< orphan*/  result; int /*<<< orphan*/  src; int /*<<< orphan*/  base; int /*<<< orphan*/  nbytes; } ;
struct ahash_req_ctx {scalar_t__ xcbc_count; scalar_t__ digest_result_dma_addr; scalar_t__ digest_buff_dma_addr; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ AES_MAX_KEY_SIZE ; 
 scalar_t__ CC_AES_128_BIT_KEY_SIZE ; 
 scalar_t__ CC_AES_BLOCK_SIZE ; 
 int CC_MAX_HASH_SEQ_LEN ; 
 int /*<<< orphan*/  DIN_AES_DOUT ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 scalar_t__ DRV_CIPHER_ECB ; 
 scalar_t__ DRV_CIPHER_XCBC_MAC ; 
 int /*<<< orphan*/  DRV_CRYPTO_DIRECTION_DECRYPT ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  S_AES_to_DOUT ; 
 int /*<<< orphan*/  S_DIN_to_AES ; 
 scalar_t__ XCBC_MAC_K1_OFFSET ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC2 (struct ahash_req_ctx*) ; 
 scalar_t__ cc_hash_complete ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct ahash_req_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 scalar_t__ FUNC5 (struct device*,struct ahash_req_ctx*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_req_ctx*,struct cc_hash_ctx*,int /*<<< orphan*/ ,struct cc_hw_desc*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahash_request*,struct cc_hw_desc*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahash_request*,struct cc_hw_desc*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,struct ahash_req_ctx*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct cc_hash_ctx* FUNC13 (struct crypto_ahash*) ; 
 scalar_t__ FUNC14 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC15 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,char*,...) ; 
 struct device* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC20 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct cc_hw_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC23 (struct cc_hw_desc*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct cc_hw_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct cc_hw_desc*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct cc_hw_desc*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct cc_hw_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC31 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct ahash_request *req)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC15(req);
	struct cc_hash_ctx *ctx = FUNC13(tfm);
	struct device *dev = FUNC18(ctx->drvdata);
	struct cc_crypto_req cc_req = {};
	struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
	int idx = 0;
	int rc = 0;
	u32 key_size, key_len;
	u32 digestsize = FUNC14(tfm);
	gfp_t flags = FUNC1(&req->base);
	u32 rem_cnt = *FUNC2(state);

	if (ctx->hw_mode == DRV_CIPHER_XCBC_MAC) {
		key_size = CC_AES_128_BIT_KEY_SIZE;
		key_len  = CC_AES_128_BIT_KEY_SIZE;
	} else {
		key_size = (ctx->key_params.keylen == 24) ? AES_MAX_KEY_SIZE :
			ctx->key_params.keylen;
		key_len =  ctx->key_params.keylen;
	}

	FUNC16(dev, "===== final  xcbc reminder (%d) ====\n", rem_cnt);

	if (FUNC4(dev, state, ctx)) {
		FUNC17(dev, "map_ahash_source() failed\n");
		return -EINVAL;
	}

	if (FUNC3(ctx->drvdata, state, req->src,
				      req->nbytes, 0, flags)) {
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

	if (state->xcbc_count && rem_cnt == 0) {
		/* Load key for ECB decryption */
		FUNC19(&desc[idx]);
		FUNC21(&desc[idx], DRV_CIPHER_ECB);
		FUNC20(&desc[idx], DRV_CRYPTO_DIRECTION_DECRYPT);
		FUNC25(&desc[idx], DMA_DLLI,
			     (ctx->opad_tmp_keys_dma_addr + XCBC_MAC_K1_OFFSET),
			     key_size, NS_BIT);
		FUNC29(&desc[idx], key_len);
		FUNC28(&desc[idx], S_DIN_to_AES);
		FUNC31(&desc[idx], SETUP_LOAD_KEY0);
		idx++;

		/* Initiate decryption of block state to previous
		 * block_state-XOR-M[n]
		 */
		FUNC19(&desc[idx]);
		FUNC25(&desc[idx], DMA_DLLI, state->digest_buff_dma_addr,
			     CC_AES_BLOCK_SIZE, NS_BIT);
		FUNC26(&desc[idx], state->digest_buff_dma_addr,
			      CC_AES_BLOCK_SIZE, NS_BIT, 0);
		FUNC28(&desc[idx], DIN_AES_DOUT);
		idx++;

		/* Memory Barrier: wait for axi write to complete */
		FUNC19(&desc[idx]);
		FUNC24(&desc[idx], 0, 0xfffff0);
		FUNC27(&desc[idx], 0, 0, 1);
		idx++;
	}

	if (ctx->hw_mode == DRV_CIPHER_XCBC_MAC)
		FUNC9(req, desc, &idx);
	else
		FUNC8(req, desc, &idx);

	if (state->xcbc_count == 0) {
		FUNC19(&desc[idx]);
		FUNC21(&desc[idx], ctx->hw_mode);
		FUNC29(&desc[idx], key_len);
		FUNC22(&desc[idx]);
		FUNC28(&desc[idx], S_DIN_to_AES);
		idx++;
	} else if (rem_cnt > 0) {
		FUNC7(state, ctx, DIN_AES_DOUT, desc, false, &idx);
	} else {
		FUNC19(&desc[idx]);
		FUNC23(&desc[idx], 0x00, CC_AES_BLOCK_SIZE);
		FUNC28(&desc[idx], DIN_AES_DOUT);
		idx++;
	}

	/* Get final MAC result */
	FUNC19(&desc[idx]);
	/* TODO */
	FUNC26(&desc[idx], state->digest_result_dma_addr,
		      digestsize, NS_BIT, 1);
	FUNC30(ctx->drvdata, &desc[idx]);
	FUNC28(&desc[idx], S_AES_to_DOUT);
	FUNC31(&desc[idx], SETUP_WRITE_STATE0);
	FUNC21(&desc[idx], ctx->hw_mode);
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