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
struct cc_aead_ctx {int enc_keylen; int authsize; int /*<<< orphan*/  drvdata; int /*<<< orphan*/  enckey_dma_addr; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ op_type; int /*<<< orphan*/  iv_dma_addr; } ;
struct aead_req_ctx {scalar_t__ assoclen; int ccm_hdr_size; int /*<<< orphan*/  mac_buf_dma_addr; int /*<<< orphan*/  ccm_iv0_dma_addr; scalar_t__ cryptlen; int /*<<< orphan*/  ccm_adata_sg; TYPE_1__ gen_ctx; int /*<<< orphan*/  icv_dma_addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 unsigned int AES_and_HASH ; 
 unsigned int AES_to_HASH_and_DOUT ; 
 int CC_AES_KEY_SIZE_MAX ; 
 int /*<<< orphan*/  DESC_DIRECTION_ENCRYPT_ENCRYPT ; 
 int /*<<< orphan*/  DIN_AES_DOUT ; 
 int /*<<< orphan*/  DIN_HASH ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DRV_CIPHER_CBC_MAC ; 
 int /*<<< orphan*/  DRV_CIPHER_CTR ; 
 scalar_t__ DRV_CRYPTO_DIRECTION_DECRYPT ; 
 int /*<<< orphan*/  DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 int /*<<< orphan*/  HASH_DIGEST_RESULT_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE1 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  S_DIN_to_AES ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,unsigned int,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ,struct cc_hw_desc*,unsigned int*) ; 
 struct cc_aead_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC16 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct aead_request *req, struct cc_hw_desc desc[],
		  unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC4(req);
	struct cc_aead_ctx *ctx = FUNC3(tfm);
	struct aead_req_ctx *req_ctx = FUNC0(req);
	unsigned int idx = *seq_size;
	unsigned int cipher_flow_mode;
	dma_addr_t mac_result;

	if (req_ctx->gen_ctx.op_type == DRV_CRYPTO_DIRECTION_DECRYPT) {
		cipher_flow_mode = AES_to_HASH_and_DOUT;
		mac_result = req_ctx->mac_buf_dma_addr;
	} else { /* Encrypt */
		cipher_flow_mode = AES_and_HASH;
		mac_result = req_ctx->icv_dma_addr;
	}

	/* load key */
	FUNC5(&desc[idx]);
	FUNC8(&desc[idx], DRV_CIPHER_CTR);
	FUNC10(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
		     ((ctx->enc_keylen == 24) ?  CC_AES_KEY_SIZE_MAX :
		      ctx->enc_keylen), NS_BIT);
	FUNC14(&desc[idx], ctx->enc_keylen);
	FUNC16(&desc[idx], SETUP_LOAD_KEY0);
	FUNC7(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
	FUNC13(&desc[idx], S_DIN_to_AES);
	idx++;

	/* load ctr state */
	FUNC5(&desc[idx]);
	FUNC8(&desc[idx], DRV_CIPHER_CTR);
	FUNC14(&desc[idx], ctx->enc_keylen);
	FUNC10(&desc[idx], DMA_DLLI,
		     req_ctx->gen_ctx.iv_dma_addr, AES_BLOCK_SIZE, NS_BIT);
	FUNC7(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
	FUNC16(&desc[idx], SETUP_LOAD_STATE1);
	FUNC13(&desc[idx], S_DIN_to_AES);
	idx++;

	/* load MAC key */
	FUNC5(&desc[idx]);
	FUNC8(&desc[idx], DRV_CIPHER_CBC_MAC);
	FUNC10(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
		     ((ctx->enc_keylen == 24) ?  CC_AES_KEY_SIZE_MAX :
		      ctx->enc_keylen), NS_BIT);
	FUNC14(&desc[idx], ctx->enc_keylen);
	FUNC16(&desc[idx], SETUP_LOAD_KEY0);
	FUNC7(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
	FUNC13(&desc[idx], S_DIN_to_HASH);
	FUNC6(&desc[idx]);
	idx++;

	/* load MAC state */
	FUNC5(&desc[idx]);
	FUNC8(&desc[idx], DRV_CIPHER_CBC_MAC);
	FUNC14(&desc[idx], ctx->enc_keylen);
	FUNC10(&desc[idx], DMA_DLLI, req_ctx->mac_buf_dma_addr,
		     AES_BLOCK_SIZE, NS_BIT);
	FUNC7(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
	FUNC16(&desc[idx], SETUP_LOAD_STATE0);
	FUNC13(&desc[idx], S_DIN_to_HASH);
	FUNC6(&desc[idx]);
	idx++;

	/* process assoc data */
	if (req_ctx->assoclen > 0) {
		FUNC2(req, DIN_HASH, desc, &idx);
	} else {
		FUNC5(&desc[idx]);
		FUNC10(&desc[idx], DMA_DLLI,
			     FUNC17(&req_ctx->ccm_adata_sg),
			     AES_BLOCK_SIZE + req_ctx->ccm_hdr_size, NS_BIT);
		FUNC13(&desc[idx], DIN_HASH);
		idx++;
	}

	/* process the cipher */
	if (req_ctx->cryptlen)
		FUNC1(req, cipher_flow_mode, desc, &idx);

	/* Read temporal MAC */
	FUNC5(&desc[idx]);
	FUNC8(&desc[idx], DRV_CIPHER_CBC_MAC);
	FUNC11(&desc[idx], req_ctx->mac_buf_dma_addr, ctx->authsize,
		      NS_BIT, 0);
	FUNC16(&desc[idx], SETUP_WRITE_STATE0);
	FUNC7(&desc[idx], HASH_DIGEST_RESULT_LITTLE_ENDIAN);
	FUNC13(&desc[idx], S_HASH_to_DOUT);
	FUNC6(&desc[idx]);
	idx++;

	/* load AES-CTR state (for last MAC calculation)*/
	FUNC5(&desc[idx]);
	FUNC8(&desc[idx], DRV_CIPHER_CTR);
	FUNC7(&desc[idx], DRV_CRYPTO_DIRECTION_ENCRYPT);
	FUNC10(&desc[idx], DMA_DLLI, req_ctx->ccm_iv0_dma_addr,
		     AES_BLOCK_SIZE, NS_BIT);
	FUNC14(&desc[idx], ctx->enc_keylen);
	FUNC16(&desc[idx], SETUP_LOAD_STATE1);
	FUNC13(&desc[idx], S_DIN_to_AES);
	idx++;

	FUNC5(&desc[idx]);
	FUNC9(&desc[idx], 0, 0xfffff0);
	FUNC12(&desc[idx], 0, 0, 1);
	idx++;

	/* encrypt the "T" value and store MAC in mac_state */
	FUNC5(&desc[idx]);
	FUNC10(&desc[idx], DMA_DLLI, req_ctx->mac_buf_dma_addr,
		     ctx->authsize, NS_BIT);
	FUNC11(&desc[idx], mac_result, ctx->authsize, NS_BIT, 1);
	FUNC15(ctx->drvdata, &desc[idx]);
	FUNC13(&desc[idx], DIN_AES_DOUT);
	idx++;

	*seq_size = idx;
	return 0;
}