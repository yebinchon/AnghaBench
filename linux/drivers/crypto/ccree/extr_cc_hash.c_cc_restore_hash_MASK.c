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
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int /*<<< orphan*/  hash_len; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  hw_mode; int /*<<< orphan*/  inter_digestsize; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_bytes_len_dma_addr; int /*<<< orphan*/  digest_buff_dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIN_HASH ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  HASH_PADDING_DISABLED ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 int /*<<< orphan*/  FUNC0 (struct ahash_req_ctx*,struct cc_hash_ctx*,int /*<<< orphan*/ ,struct cc_hw_desc*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct cc_hw_desc *desc, struct cc_hash_ctx *ctx,
			   struct ahash_req_ctx *state, unsigned int idx)
{
	/* Restore hash digest */
	FUNC1(&desc[idx]);
	FUNC5(&desc[idx], ctx->hw_mode, ctx->hash_mode);
	FUNC3(&desc[idx], DMA_DLLI, state->digest_buff_dma_addr,
		     ctx->inter_digestsize, NS_BIT);
	FUNC4(&desc[idx], S_DIN_to_HASH);
	FUNC6(&desc[idx], SETUP_LOAD_STATE0);
	idx++;

	/* Restore hash current length */
	FUNC1(&desc[idx]);
	FUNC5(&desc[idx], ctx->hw_mode, ctx->hash_mode);
	FUNC2(&desc[idx], HASH_PADDING_DISABLED);
	FUNC3(&desc[idx], DMA_DLLI, state->digest_bytes_len_dma_addr,
		     ctx->hash_len, NS_BIT);
	FUNC4(&desc[idx], S_DIN_to_HASH);
	FUNC6(&desc[idx], SETUP_LOAD_KEY0);
	idx++;

	FUNC0(state, ctx, DIN_HASH, desc, false, &idx);

	return idx;
}