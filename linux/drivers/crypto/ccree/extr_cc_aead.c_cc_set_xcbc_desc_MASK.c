#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_3__ {scalar_t__ xcbc_keys_dma_addr; } ;
struct TYPE_4__ {TYPE_1__ xcbc; } ;
struct cc_aead_ctx {TYPE_2__ auth_state; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int AES_KEYSIZE_128 ; 
 int /*<<< orphan*/  CC_AES_128_BIT_KEY_SIZE ; 
 int /*<<< orphan*/  CC_AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DESC_DIRECTION_ENCRYPT_ENCRYPT ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DRV_CIPHER_XCBC_MAC ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE1 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE2 ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 struct cc_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct aead_request *req, struct cc_hw_desc desc[],
			     unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC1(req);
	struct cc_aead_ctx *ctx = FUNC0(tfm);
	unsigned int idx = *seq_size;

	/* Loading MAC state */
	FUNC2(&desc[idx]);
	FUNC6(&desc[idx], 0, CC_AES_BLOCK_SIZE);
	FUNC10(&desc[idx], SETUP_LOAD_STATE0);
	FUNC5(&desc[idx], DRV_CIPHER_XCBC_MAC);
	FUNC4(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
	FUNC9(&desc[idx], CC_AES_128_BIT_KEY_SIZE);
	FUNC8(&desc[idx], S_DIN_to_HASH);
	FUNC3(&desc[idx]);
	idx++;

	/* Setup XCBC MAC K1 */
	FUNC2(&desc[idx]);
	FUNC7(&desc[idx], DMA_DLLI,
		     ctx->auth_state.xcbc.xcbc_keys_dma_addr,
		     AES_KEYSIZE_128, NS_BIT);
	FUNC10(&desc[idx], SETUP_LOAD_KEY0);
	FUNC5(&desc[idx], DRV_CIPHER_XCBC_MAC);
	FUNC4(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
	FUNC9(&desc[idx], CC_AES_128_BIT_KEY_SIZE);
	FUNC8(&desc[idx], S_DIN_to_HASH);
	FUNC3(&desc[idx]);
	idx++;

	/* Setup XCBC MAC K2 */
	FUNC2(&desc[idx]);
	FUNC7(&desc[idx], DMA_DLLI,
		     (ctx->auth_state.xcbc.xcbc_keys_dma_addr +
		      AES_KEYSIZE_128), AES_KEYSIZE_128, NS_BIT);
	FUNC10(&desc[idx], SETUP_LOAD_STATE1);
	FUNC5(&desc[idx], DRV_CIPHER_XCBC_MAC);
	FUNC4(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
	FUNC9(&desc[idx], CC_AES_128_BIT_KEY_SIZE);
	FUNC8(&desc[idx], S_DIN_to_HASH);
	FUNC3(&desc[idx]);
	idx++;

	/* Setup XCBC MAC K3 */
	FUNC2(&desc[idx]);
	FUNC7(&desc[idx], DMA_DLLI,
		     (ctx->auth_state.xcbc.xcbc_keys_dma_addr +
		      2 * AES_KEYSIZE_128), AES_KEYSIZE_128, NS_BIT);
	FUNC10(&desc[idx], SETUP_LOAD_STATE2);
	FUNC5(&desc[idx], DRV_CIPHER_XCBC_MAC);
	FUNC4(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
	FUNC9(&desc[idx], CC_AES_128_BIT_KEY_SIZE);
	FUNC8(&desc[idx], S_DIN_to_HASH);
	FUNC3(&desc[idx]);
	idx++;

	*seq_size = idx;
}