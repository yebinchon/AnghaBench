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
struct cc_hash_ctx {int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  drvdata; int /*<<< orphan*/  hw_mode; } ;
struct ahash_request {int dummy; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_result_dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_PADDING_DISABLED ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 struct cc_hash_ctx* FUNC2 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct cc_hw_desc *desc, struct ahash_request *req,
			 int idx)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC4(req);
	struct cc_hash_ctx *ctx = FUNC2(tfm);
	u32 digestsize = FUNC3(tfm);

	/* Get final MAC result */
	FUNC5(&desc[idx]);
	FUNC9(&desc[idx], ctx->hw_mode, ctx->hash_mode);
	/* TODO */
	FUNC7(&desc[idx], state->digest_result_dma_addr, digestsize,
		      NS_BIT, 1);
	FUNC10(ctx->drvdata, &desc[idx]);
	FUNC8(&desc[idx], S_HASH_to_DOUT);
	FUNC11(&desc[idx], SETUP_WRITE_STATE0);
	FUNC6(&desc[idx], HASH_PADDING_DISABLED);
	FUNC1(ctx->hash_mode, &desc[idx]);
	idx++;

	return idx;
}