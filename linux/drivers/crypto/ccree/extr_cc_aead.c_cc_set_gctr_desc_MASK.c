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
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {int /*<<< orphan*/  enc_keylen; int /*<<< orphan*/  enckey_dma_addr; } ;
struct aead_request {int dummy; } ;
struct aead_req_ctx {int /*<<< orphan*/  gcm_iv_inc2_dma_addr; int /*<<< orphan*/  plaintext_authenticate_only; scalar_t__ cryptlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DRV_CIPHER_GCTR ; 
 int /*<<< orphan*/  DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE1 ; 
 int /*<<< orphan*/  S_DIN_to_AES ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct aead_request *req, struct cc_hw_desc desc[],
			     unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC2(req);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct aead_req_ctx *req_ctx = FUNC0(req);
	unsigned int idx = *seq_size;

	/* load key to AES*/
	FUNC3(&desc[idx]);
	FUNC5(&desc[idx], DRV_CIPHER_GCTR);
	FUNC4(&desc[idx], DRV_CRYPTO_DIRECTION_ENCRYPT);
	FUNC6(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
		     ctx->enc_keylen, NS_BIT);
	FUNC8(&desc[idx], ctx->enc_keylen);
	FUNC9(&desc[idx], SETUP_LOAD_KEY0);
	FUNC7(&desc[idx], S_DIN_to_AES);
	idx++;

	if (req_ctx->cryptlen && !req_ctx->plaintext_authenticate_only) {
		/* load AES/CTR initial CTR value inc by 2*/
		FUNC3(&desc[idx]);
		FUNC5(&desc[idx], DRV_CIPHER_GCTR);
		FUNC8(&desc[idx], ctx->enc_keylen);
		FUNC6(&desc[idx], DMA_DLLI,
			     req_ctx->gcm_iv_inc2_dma_addr, AES_BLOCK_SIZE,
			     NS_BIT);
		FUNC4(&desc[idx], DRV_CRYPTO_DIRECTION_ENCRYPT);
		FUNC9(&desc[idx], SETUP_LOAD_STATE1);
		FUNC7(&desc[idx], S_DIN_to_AES);
		idx++;
	}

	*seq_size = idx;
}