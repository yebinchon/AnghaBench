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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int /*<<< orphan*/  hash_len; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  drvdata; int /*<<< orphan*/  hw_mode; int /*<<< orphan*/  inter_digestsize; } ;
struct ahash_request {int dummy; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_buff_dma_addr; int /*<<< orphan*/  opad_digest_dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIN_HASH ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  HASH_PADDING_ENABLED ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 struct cc_hash_ctx* FUNC3 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC5 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct cc_hw_desc *desc, struct ahash_request *req,
		       int idx)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC5(req);
	struct cc_hash_ctx *ctx = FUNC3(tfm);
	u32 digestsize = FUNC4(tfm);

	/* store the hash digest result in the context */
	FUNC6(&desc[idx]);
	FUNC8(&desc[idx], ctx->hw_mode);
	FUNC12(&desc[idx], state->digest_buff_dma_addr, digestsize,
		      NS_BIT, 0);
	FUNC14(&desc[idx], S_HASH_to_DOUT);
	FUNC2(ctx->hash_mode, &desc[idx]);
	FUNC15(&desc[idx], SETUP_WRITE_STATE0);
	idx++;

	/* Loading hash opad xor key state */
	FUNC6(&desc[idx]);
	FUNC8(&desc[idx], ctx->hw_mode);
	FUNC11(&desc[idx], DMA_DLLI, state->opad_digest_dma_addr,
		     ctx->inter_digestsize, NS_BIT);
	FUNC14(&desc[idx], S_DIN_to_HASH);
	FUNC15(&desc[idx], SETUP_LOAD_STATE0);
	idx++;

	/* Load the hash current length */
	FUNC6(&desc[idx]);
	FUNC8(&desc[idx], ctx->hw_mode);
	FUNC10(&desc[idx],
		     FUNC1(ctx->drvdata, ctx->hash_mode),
		     ctx->hash_len);
	FUNC7(&desc[idx], HASH_PADDING_ENABLED);
	FUNC14(&desc[idx], S_DIN_to_HASH);
	FUNC15(&desc[idx], SETUP_LOAD_KEY0);
	idx++;

	/* Memory Barrier: wait for IPAD/OPAD axi write to complete */
	FUNC6(&desc[idx]);
	FUNC9(&desc[idx], 0, 0xfffff0);
	FUNC13(&desc[idx], 0, 0, 1);
	idx++;

	/* Perform HASH update */
	FUNC6(&desc[idx]);
	FUNC11(&desc[idx], DMA_DLLI, state->digest_buff_dma_addr,
		     digestsize, NS_BIT);
	FUNC14(&desc[idx], DIN_HASH);
	idx++;

	return idx;
}