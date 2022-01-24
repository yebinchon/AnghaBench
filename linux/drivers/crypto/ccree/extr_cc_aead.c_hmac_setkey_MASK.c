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
struct cc_hw_desc {int dummy; } ;
struct cc_hmac_s {scalar_t__ ipad_opad_dma_addr; int /*<<< orphan*/  padded_authkey_dma_addr; } ;
struct TYPE_2__ {struct cc_hmac_s hmac; } ;
struct cc_aead_ctx {scalar_t__ auth_mode; int /*<<< orphan*/  hash_len; int /*<<< orphan*/  drvdata; TYPE_1__ auth_state; } ;

/* Variables and functions */
 unsigned int CC_SHA1_DIGEST_SIZE ; 
 unsigned int CC_SHA256_DIGEST_SIZE ; 
 int /*<<< orphan*/  DIN_HASH ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 unsigned int DRV_HASH_HW_SHA1 ; 
 unsigned int DRV_HASH_HW_SHA256 ; 
 scalar_t__ DRV_HASH_SHA1 ; 
 int /*<<< orphan*/  HASH_PADDING_DISABLED ; 
 unsigned int HMAC_IPAD_CONST ; 
 unsigned int HMAC_OPAD_CONST ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE1 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  SHA256_BLOCK_SIZE ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct cc_hw_desc *desc, struct cc_aead_ctx *ctx)
{
	unsigned int hmac_pad_const[2] = { HMAC_IPAD_CONST, HMAC_OPAD_CONST };
	unsigned int digest_ofs = 0;
	unsigned int hash_mode = (ctx->auth_mode == DRV_HASH_SHA1) ?
			DRV_HASH_HW_SHA1 : DRV_HASH_HW_SHA256;
	unsigned int digest_size = (ctx->auth_mode == DRV_HASH_SHA1) ?
			CC_SHA1_DIGEST_SIZE : CC_SHA256_DIGEST_SIZE;
	struct cc_hmac_s *hmac = &ctx->auth_state.hmac;

	unsigned int idx = 0;
	int i;

	/* calc derived HMAC key */
	for (i = 0; i < 2; i++) {
		/* Load hash initial state */
		FUNC1(&desc[idx]);
		FUNC3(&desc[idx], hash_mode);
		FUNC5(&desc[idx],
			     FUNC0(ctx->drvdata,
						   ctx->auth_mode),
			     digest_size);
		FUNC8(&desc[idx], S_DIN_to_HASH);
		FUNC9(&desc[idx], SETUP_LOAD_STATE0);
		idx++;

		/* Load the hash current length*/
		FUNC1(&desc[idx]);
		FUNC3(&desc[idx], hash_mode);
		FUNC4(&desc[idx], 0, ctx->hash_len);
		FUNC8(&desc[idx], S_DIN_to_HASH);
		FUNC9(&desc[idx], SETUP_LOAD_KEY0);
		idx++;

		/* Prepare ipad key */
		FUNC1(&desc[idx]);
		FUNC11(&desc[idx], hmac_pad_const[i]);
		FUNC3(&desc[idx], hash_mode);
		FUNC8(&desc[idx], S_DIN_to_HASH);
		FUNC9(&desc[idx], SETUP_LOAD_STATE1);
		idx++;

		/* Perform HASH update */
		FUNC1(&desc[idx]);
		FUNC6(&desc[idx], DMA_DLLI,
			     hmac->padded_authkey_dma_addr,
			     SHA256_BLOCK_SIZE, NS_BIT);
		FUNC3(&desc[idx], hash_mode);
		FUNC10(&desc[idx]);
		FUNC8(&desc[idx], DIN_HASH);
		idx++;

		/* Get the digset */
		FUNC1(&desc[idx]);
		FUNC3(&desc[idx], hash_mode);
		FUNC7(&desc[idx],
			      (hmac->ipad_opad_dma_addr + digest_ofs),
			      digest_size, NS_BIT, 0);
		FUNC8(&desc[idx], S_HASH_to_DOUT);
		FUNC9(&desc[idx], SETUP_WRITE_STATE0);
		FUNC2(&desc[idx], HASH_PADDING_DISABLED);
		idx++;

		digest_ofs += digest_size;
	}

	return idx;
}