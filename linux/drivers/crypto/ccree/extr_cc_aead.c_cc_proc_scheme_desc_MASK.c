#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_handle {int /*<<< orphan*/  sram_workspace_addr; } ;
struct TYPE_4__ {scalar_t__ ipad_opad_dma_addr; } ;
struct TYPE_5__ {TYPE_1__ hmac; } ;
struct cc_aead_ctx {scalar_t__ auth_mode; unsigned int hash_len; TYPE_3__* drvdata; TYPE_2__ auth_state; } ;
struct aead_request {int dummy; } ;
struct TYPE_6__ {struct cc_aead_handle* aead_handle; } ;

/* Variables and functions */
 unsigned int CC_SHA1_DIGEST_SIZE ; 
 unsigned int CC_SHA256_DIGEST_SIZE ; 
 int /*<<< orphan*/  DIN_HASH ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DO_PAD ; 
 unsigned int DRV_HASH_HW_SHA1 ; 
 unsigned int DRV_HASH_HW_SHA256 ; 
 scalar_t__ DRV_HASH_SHA1 ; 
 int /*<<< orphan*/  HASH_DIGEST_RESULT_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  HASH_PADDING_ENABLED ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE1 ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned int) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct aead_request *req,
				struct cc_hw_desc desc[],
				unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC2(req);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct cc_aead_handle *aead_handle = ctx->drvdata->aead_handle;
	unsigned int hash_mode = (ctx->auth_mode == DRV_HASH_SHA1) ?
				DRV_HASH_HW_SHA1 : DRV_HASH_HW_SHA256;
	unsigned int digest_size = (ctx->auth_mode == DRV_HASH_SHA1) ?
				CC_SHA1_DIGEST_SIZE : CC_SHA256_DIGEST_SIZE;
	unsigned int idx = *seq_size;

	FUNC3(&desc[idx]);
	FUNC7(&desc[idx], hash_mode);
	FUNC10(&desc[idx], aead_handle->sram_workspace_addr,
		      ctx->hash_len);
	FUNC11(&desc[idx], S_HASH_to_DOUT);
	FUNC12(&desc[idx], SETUP_WRITE_STATE1);
	FUNC6(&desc[idx], DO_PAD);
	idx++;

	/* Get final ICV result */
	FUNC3(&desc[idx]);
	FUNC10(&desc[idx], aead_handle->sram_workspace_addr,
		      digest_size);
	FUNC11(&desc[idx], S_HASH_to_DOUT);
	FUNC12(&desc[idx], SETUP_WRITE_STATE0);
	FUNC4(&desc[idx], HASH_DIGEST_RESULT_LITTLE_ENDIAN);
	FUNC7(&desc[idx], hash_mode);
	idx++;

	/* Loading hash opad xor key state */
	FUNC3(&desc[idx]);
	FUNC7(&desc[idx], hash_mode);
	FUNC9(&desc[idx], DMA_DLLI,
		     (ctx->auth_state.hmac.ipad_opad_dma_addr + digest_size),
		     digest_size, NS_BIT);
	FUNC11(&desc[idx], S_DIN_to_HASH);
	FUNC12(&desc[idx], SETUP_LOAD_STATE0);
	idx++;

	/* Load init. digest len (64 bytes) */
	FUNC3(&desc[idx]);
	FUNC7(&desc[idx], hash_mode);
	FUNC8(&desc[idx], FUNC0(ctx->drvdata, hash_mode),
		     ctx->hash_len);
	FUNC5(&desc[idx], HASH_PADDING_ENABLED);
	FUNC11(&desc[idx], S_DIN_to_HASH);
	FUNC12(&desc[idx], SETUP_LOAD_KEY0);
	idx++;

	/* Perform HASH update */
	FUNC3(&desc[idx]);
	FUNC8(&desc[idx], aead_handle->sram_workspace_addr,
		     digest_size);
	FUNC11(&desc[idx], DIN_HASH);
	idx++;

	*seq_size = idx;
}