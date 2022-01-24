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
struct aead_req_ctx {int /*<<< orphan*/  hkey_dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DIN_AES_DOUT ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DRV_CIPHER_ECB ; 
 int /*<<< orphan*/  DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 int /*<<< orphan*/  DRV_HASH_HW_GHASH ; 
 int /*<<< orphan*/  HASH_PADDING_ENABLED ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  S_DIN_to_AES ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct aead_request *req,
			      struct cc_hw_desc desc[], unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC2(req);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct aead_req_ctx *req_ctx = FUNC0(req);
	unsigned int idx = *seq_size;

	/* load key to AES*/
	FUNC3(&desc[idx]);
	FUNC8(&desc[idx], DRV_CIPHER_ECB);
	FUNC5(&desc[idx], DRV_CRYPTO_DIRECTION_ENCRYPT);
	FUNC11(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
		     ctx->enc_keylen, NS_BIT);
	FUNC15(&desc[idx], ctx->enc_keylen);
	FUNC16(&desc[idx], SETUP_LOAD_KEY0);
	FUNC14(&desc[idx], S_DIN_to_AES);
	idx++;

	/* process one zero block to generate hkey */
	FUNC3(&desc[idx]);
	FUNC9(&desc[idx], 0x0, AES_BLOCK_SIZE);
	FUNC12(&desc[idx], req_ctx->hkey_dma_addr, AES_BLOCK_SIZE,
		      NS_BIT, 0);
	FUNC14(&desc[idx], DIN_AES_DOUT);
	idx++;

	/* Memory Barrier */
	FUNC3(&desc[idx]);
	FUNC10(&desc[idx], 0, 0xfffff0);
	FUNC13(&desc[idx], 0, 0, 1);
	idx++;

	/* Load GHASH subkey */
	FUNC3(&desc[idx]);
	FUNC11(&desc[idx], DMA_DLLI, req_ctx->hkey_dma_addr,
		     AES_BLOCK_SIZE, NS_BIT);
	FUNC13(&desc[idx], 0, 0, 1);
	FUNC14(&desc[idx], S_DIN_to_HASH);
	FUNC4(&desc[idx]);
	FUNC8(&desc[idx], DRV_HASH_HW_GHASH);
	FUNC6(&desc[idx], HASH_PADDING_ENABLED);
	FUNC16(&desc[idx], SETUP_LOAD_KEY0);
	idx++;

	/* Configure Hash Engine to work with GHASH.
	 * Since it was not possible to extend HASH submodes to add GHASH,
	 * The following command is necessary in order to
	 * select GHASH (according to HW designers)
	 */
	FUNC3(&desc[idx]);
	FUNC10(&desc[idx], 0, 0xfffff0);
	FUNC13(&desc[idx], 0, 0, 1);
	FUNC14(&desc[idx], S_DIN_to_HASH);
	FUNC4(&desc[idx]);
	FUNC8(&desc[idx], DRV_HASH_HW_GHASH);
	FUNC7(&desc[idx], 1); //1=AES_SK RKEK
	FUNC5(&desc[idx], DRV_CRYPTO_DIRECTION_ENCRYPT);
	FUNC6(&desc[idx], HASH_PADDING_ENABLED);
	FUNC16(&desc[idx], SETUP_LOAD_KEY0);
	idx++;

	/* Load GHASH initial STATE (which is 0). (for any hash there is an
	 * initial state)
	 */
	FUNC3(&desc[idx]);
	FUNC9(&desc[idx], 0x0, AES_BLOCK_SIZE);
	FUNC13(&desc[idx], 0, 0, 1);
	FUNC14(&desc[idx], S_DIN_to_HASH);
	FUNC4(&desc[idx]);
	FUNC8(&desc[idx], DRV_HASH_HW_GHASH);
	FUNC6(&desc[idx], HASH_PADDING_ENABLED);
	FUNC16(&desc[idx], SETUP_LOAD_STATE0);
	idx++;

	*seq_size = idx;
}