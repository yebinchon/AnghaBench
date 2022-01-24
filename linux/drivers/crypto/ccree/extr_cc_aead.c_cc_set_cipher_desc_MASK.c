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
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {scalar_t__ flow_mode; scalar_t__ cipher_mode; int enc_keylen; int /*<<< orphan*/  enckey_dma_addr; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {int op_type; int /*<<< orphan*/  iv_dma_addr; } ;
struct aead_req_ctx {unsigned int hw_iv_size; TYPE_1__ gen_ctx; } ;

/* Variables and functions */
 unsigned int CC_AES_KEY_SIZE_MAX ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 scalar_t__ DRV_CIPHER_CTR ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE1 ; 
 scalar_t__ S_DIN_to_AES ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct aead_request *req,
			       struct cc_hw_desc desc[],
			       unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC2(req);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct aead_req_ctx *req_ctx = FUNC0(req);
	unsigned int hw_iv_size = req_ctx->hw_iv_size;
	unsigned int idx = *seq_size;
	int direct = req_ctx->gen_ctx.op_type;

	/* Setup cipher state */
	FUNC3(&desc[idx]);
	FUNC4(&desc[idx], direct);
	FUNC7(&desc[idx], ctx->flow_mode);
	FUNC6(&desc[idx], DMA_DLLI, req_ctx->gen_ctx.iv_dma_addr,
		     hw_iv_size, NS_BIT);
	if (ctx->cipher_mode == DRV_CIPHER_CTR)
		FUNC10(&desc[idx], SETUP_LOAD_STATE1);
	else
		FUNC10(&desc[idx], SETUP_LOAD_STATE0);
	FUNC5(&desc[idx], ctx->cipher_mode);
	idx++;

	/* Setup enc. key */
	FUNC3(&desc[idx]);
	FUNC4(&desc[idx], direct);
	FUNC10(&desc[idx], SETUP_LOAD_KEY0);
	FUNC7(&desc[idx], ctx->flow_mode);
	if (ctx->flow_mode == S_DIN_to_AES) {
		FUNC6(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
			     ((ctx->enc_keylen == 24) ? CC_AES_KEY_SIZE_MAX :
			      ctx->enc_keylen), NS_BIT);
		FUNC8(&desc[idx], ctx->enc_keylen);
	} else {
		FUNC6(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
			     ctx->enc_keylen, NS_BIT);
		FUNC9(&desc[idx], ctx->enc_keylen);
	}
	FUNC5(&desc[idx], ctx->cipher_mode);
	idx++;

	*seq_size = idx;
}