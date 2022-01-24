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
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct crypto_ahash {int /*<<< orphan*/  base; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; int /*<<< orphan*/ * key; scalar_t__ key_dma_addr; } ;
struct cc_hash_ctx {int is_hmac; int inter_digestsize; int hash_len; TYPE_1__ key_params; int /*<<< orphan*/  drvdata; scalar_t__ digest_buff_dma_addr; scalar_t__ opad_tmp_keys_dma_addr; int /*<<< orphan*/  hw_mode; int /*<<< orphan*/  hash_mode; } ;
struct cc_crypto_req {int dummy; } ;
typedef  int /*<<< orphan*/  cc_sram_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BYPASS ; 
 int CC_MAX_HASH_SEQ_LEN ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  DIN_HASH ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HASH_PADDING_DISABLED ; 
 int /*<<< orphan*/  HASH_PADDING_ENABLED ; 
 unsigned int HMAC_IPAD_CONST ; 
 unsigned int HMAC_OPAD_CONST ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE1 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 struct cc_hash_ctx* FUNC3 (struct crypto_ahash*) ; 
 int FUNC4 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int,...) ; 
 scalar_t__ FUNC9 (struct device*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 struct device* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cc_hw_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct cc_hw_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct cc_hw_desc*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct cc_hw_desc*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC25 (struct cc_hw_desc*,unsigned int) ; 

__attribute__((used)) static int FUNC26(struct crypto_ahash *ahash, const u8 *key,
			  unsigned int keylen)
{
	unsigned int hmac_pad_const[2] = { HMAC_IPAD_CONST, HMAC_OPAD_CONST };
	struct cc_crypto_req cc_req = {};
	struct cc_hash_ctx *ctx = NULL;
	int blocksize = 0;
	int digestsize = 0;
	int i, idx = 0, rc = 0;
	struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
	cc_sram_addr_t larval_addr;
	struct device *dev;

	ctx = FUNC3(ahash);
	dev = FUNC12(ctx->drvdata);
	FUNC7(dev, "start keylen: %d", keylen);

	blocksize = FUNC6(&ahash->base);
	digestsize = FUNC4(ahash);

	larval_addr = FUNC0(ctx->drvdata, ctx->hash_mode);

	/* The keylen value distinguishes HASH in case keylen is ZERO bytes,
	 * any NON-ZERO value utilizes HMAC flow
	 */
	ctx->key_params.keylen = keylen;
	ctx->key_params.key_dma_addr = 0;
	ctx->is_hmac = true;
	ctx->key_params.key = NULL;

	if (keylen) {
		ctx->key_params.key = FUNC14(key, keylen, GFP_KERNEL);
		if (!ctx->key_params.key)
			return -ENOMEM;

		ctx->key_params.key_dma_addr =
			FUNC9(dev, (void *)ctx->key_params.key, keylen,
				       DMA_TO_DEVICE);
		if (FUNC10(dev, ctx->key_params.key_dma_addr)) {
			FUNC8(dev, "Mapping key va=0x%p len=%u for DMA failed\n",
				*ctx->key_params.key, keylen);
			FUNC15(ctx->key_params.key);
			return -ENOMEM;
		}
		FUNC7(dev, "mapping key-buffer: key_dma_addr=%pad keylen=%u\n",
			&ctx->key_params.key_dma_addr, ctx->key_params.keylen);

		if (keylen > blocksize) {
			/* Load hash initial state */
			FUNC13(&desc[idx]);
			FUNC17(&desc[idx], ctx->hw_mode);
			FUNC19(&desc[idx], larval_addr,
				     ctx->inter_digestsize);
			FUNC22(&desc[idx], S_DIN_to_HASH);
			FUNC23(&desc[idx], SETUP_LOAD_STATE0);
			idx++;

			/* Load the hash current length*/
			FUNC13(&desc[idx]);
			FUNC17(&desc[idx], ctx->hw_mode);
			FUNC18(&desc[idx], 0, ctx->hash_len);
			FUNC16(&desc[idx], HASH_PADDING_ENABLED);
			FUNC22(&desc[idx], S_DIN_to_HASH);
			FUNC23(&desc[idx], SETUP_LOAD_KEY0);
			idx++;

			FUNC13(&desc[idx]);
			FUNC20(&desc[idx], DMA_DLLI,
				     ctx->key_params.key_dma_addr, keylen,
				     NS_BIT);
			FUNC22(&desc[idx], DIN_HASH);
			idx++;

			/* Get hashed key */
			FUNC13(&desc[idx]);
			FUNC17(&desc[idx], ctx->hw_mode);
			FUNC21(&desc[idx], ctx->opad_tmp_keys_dma_addr,
				      digestsize, NS_BIT, 0);
			FUNC22(&desc[idx], S_HASH_to_DOUT);
			FUNC23(&desc[idx], SETUP_WRITE_STATE0);
			FUNC16(&desc[idx], HASH_PADDING_DISABLED);
			FUNC2(ctx->hash_mode, &desc[idx]);
			idx++;

			FUNC13(&desc[idx]);
			FUNC18(&desc[idx], 0, (blocksize - digestsize));
			FUNC22(&desc[idx], BYPASS);
			FUNC21(&desc[idx],
				      (ctx->opad_tmp_keys_dma_addr +
				       digestsize),
				      (blocksize - digestsize), NS_BIT, 0);
			idx++;
		} else {
			FUNC13(&desc[idx]);
			FUNC20(&desc[idx], DMA_DLLI,
				     ctx->key_params.key_dma_addr, keylen,
				     NS_BIT);
			FUNC22(&desc[idx], BYPASS);
			FUNC21(&desc[idx], ctx->opad_tmp_keys_dma_addr,
				      keylen, NS_BIT, 0);
			idx++;

			if ((blocksize - keylen)) {
				FUNC13(&desc[idx]);
				FUNC18(&desc[idx], 0,
					      (blocksize - keylen));
				FUNC22(&desc[idx], BYPASS);
				FUNC21(&desc[idx],
					      (ctx->opad_tmp_keys_dma_addr +
					       keylen), (blocksize - keylen),
					      NS_BIT, 0);
				idx++;
			}
		}
	} else {
		FUNC13(&desc[idx]);
		FUNC18(&desc[idx], 0, blocksize);
		FUNC22(&desc[idx], BYPASS);
		FUNC21(&desc[idx], (ctx->opad_tmp_keys_dma_addr),
			      blocksize, NS_BIT, 0);
		idx++;
	}

	rc = FUNC1(ctx->drvdata, &cc_req, desc, idx);
	if (rc) {
		FUNC8(dev, "send_request() failed (rc=%d)\n", rc);
		goto out;
	}

	/* calc derived HMAC key */
	for (idx = 0, i = 0; i < 2; i++) {
		/* Load hash initial state */
		FUNC13(&desc[idx]);
		FUNC17(&desc[idx], ctx->hw_mode);
		FUNC19(&desc[idx], larval_addr, ctx->inter_digestsize);
		FUNC22(&desc[idx], S_DIN_to_HASH);
		FUNC23(&desc[idx], SETUP_LOAD_STATE0);
		idx++;

		/* Load the hash current length*/
		FUNC13(&desc[idx]);
		FUNC17(&desc[idx], ctx->hw_mode);
		FUNC18(&desc[idx], 0, ctx->hash_len);
		FUNC22(&desc[idx], S_DIN_to_HASH);
		FUNC23(&desc[idx], SETUP_LOAD_KEY0);
		idx++;

		/* Prepare ipad key */
		FUNC13(&desc[idx]);
		FUNC25(&desc[idx], hmac_pad_const[i]);
		FUNC17(&desc[idx], ctx->hw_mode);
		FUNC22(&desc[idx], S_DIN_to_HASH);
		FUNC23(&desc[idx], SETUP_LOAD_STATE1);
		idx++;

		/* Perform HASH update */
		FUNC13(&desc[idx]);
		FUNC20(&desc[idx], DMA_DLLI, ctx->opad_tmp_keys_dma_addr,
			     blocksize, NS_BIT);
		FUNC17(&desc[idx], ctx->hw_mode);
		FUNC24(&desc[idx]);
		FUNC22(&desc[idx], DIN_HASH);
		idx++;

		/* Get the IPAD/OPAD xor key (Note, IPAD is the initial digest
		 * of the first HASH "update" state)
		 */
		FUNC13(&desc[idx]);
		FUNC17(&desc[idx], ctx->hw_mode);
		if (i > 0) /* Not first iteration */
			FUNC21(&desc[idx], ctx->opad_tmp_keys_dma_addr,
				      ctx->inter_digestsize, NS_BIT, 0);
		else /* First iteration */
			FUNC21(&desc[idx], ctx->digest_buff_dma_addr,
				      ctx->inter_digestsize, NS_BIT, 0);
		FUNC22(&desc[idx], S_HASH_to_DOUT);
		FUNC23(&desc[idx], SETUP_WRITE_STATE0);
		idx++;
	}

	rc = FUNC1(ctx->drvdata, &cc_req, desc, idx);

out:
	if (rc)
		FUNC5(ahash, CRYPTO_TFM_RES_BAD_KEY_LEN);

	if (ctx->key_params.key_dma_addr) {
		FUNC11(dev, ctx->key_params.key_dma_addr,
				 ctx->key_params.keylen, DMA_TO_DEVICE);
		FUNC7(dev, "Unmapped key-buffer: key_dma_addr=%pad keylen=%u\n",
			&ctx->key_params.key_dma_addr, ctx->key_params.keylen);
	}

	FUNC15(ctx->key_params.key);

	return rc;
}