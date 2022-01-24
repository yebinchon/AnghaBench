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
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; int /*<<< orphan*/  key; int /*<<< orphan*/  key_dma_addr; } ;
struct cc_hash_ctx {int is_hmac; TYPE_1__ key_params; int /*<<< orphan*/  drvdata; scalar_t__ opad_tmp_keys_dma_addr; } ;
struct cc_crypto_req {int dummy; } ;

/* Variables and functions */
#define  AES_KEYSIZE_128 130 
#define  AES_KEYSIZE_192 129 
#define  AES_KEYSIZE_256 128 
 int /*<<< orphan*/  CC_AES_128_BIT_KEY_SIZE ; 
 int CC_MAX_HASH_SEQ_LEN ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  DIN_AES_DOUT ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DRV_CIPHER_ECB ; 
 int /*<<< orphan*/  DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  S_DIN_to_AES ; 
 scalar_t__ XCBC_MAC_K1_OFFSET ; 
 scalar_t__ XCBC_MAC_K2_OFFSET ; 
 scalar_t__ XCBC_MAC_K3_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int) ; 
 struct cc_hash_ctx* FUNC1 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cc_hw_desc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct cc_hw_desc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct crypto_ahash *ahash,
			  const u8 *key, unsigned int keylen)
{
	struct cc_crypto_req cc_req = {};
	struct cc_hash_ctx *ctx = FUNC1(ahash);
	struct device *dev = FUNC8(ctx->drvdata);
	int rc = 0;
	unsigned int idx = 0;
	struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];

	FUNC3(dev, "===== setkey (%d) ====\n", keylen);

	switch (keylen) {
	case AES_KEYSIZE_128:
	case AES_KEYSIZE_192:
	case AES_KEYSIZE_256:
		break;
	default:
		return -EINVAL;
	}

	ctx->key_params.keylen = keylen;

	ctx->key_params.key = FUNC10(key, keylen, GFP_KERNEL);
	if (!ctx->key_params.key)
		return -ENOMEM;

	ctx->key_params.key_dma_addr =
		FUNC5(dev, ctx->key_params.key, keylen, DMA_TO_DEVICE);
	if (FUNC6(dev, ctx->key_params.key_dma_addr)) {
		FUNC4(dev, "Mapping key va=0x%p len=%u for DMA failed\n",
			key, keylen);
		FUNC11(ctx->key_params.key);
		return -ENOMEM;
	}
	FUNC3(dev, "mapping key-buffer: key_dma_addr=%pad keylen=%u\n",
		&ctx->key_params.key_dma_addr, ctx->key_params.keylen);

	ctx->is_hmac = true;
	/* 1. Load the AES key */
	FUNC9(&desc[idx]);
	FUNC15(&desc[idx], DMA_DLLI, ctx->key_params.key_dma_addr,
		     keylen, NS_BIT);
	FUNC13(&desc[idx], DRV_CIPHER_ECB);
	FUNC12(&desc[idx], DRV_CRYPTO_DIRECTION_ENCRYPT);
	FUNC18(&desc[idx], keylen);
	FUNC17(&desc[idx], S_DIN_to_AES);
	FUNC19(&desc[idx], SETUP_LOAD_KEY0);
	idx++;

	FUNC9(&desc[idx]);
	FUNC14(&desc[idx], 0x01010101, CC_AES_128_BIT_KEY_SIZE);
	FUNC17(&desc[idx], DIN_AES_DOUT);
	FUNC16(&desc[idx],
		      (ctx->opad_tmp_keys_dma_addr + XCBC_MAC_K1_OFFSET),
		      CC_AES_128_BIT_KEY_SIZE, NS_BIT, 0);
	idx++;

	FUNC9(&desc[idx]);
	FUNC14(&desc[idx], 0x02020202, CC_AES_128_BIT_KEY_SIZE);
	FUNC17(&desc[idx], DIN_AES_DOUT);
	FUNC16(&desc[idx],
		      (ctx->opad_tmp_keys_dma_addr + XCBC_MAC_K2_OFFSET),
		      CC_AES_128_BIT_KEY_SIZE, NS_BIT, 0);
	idx++;

	FUNC9(&desc[idx]);
	FUNC14(&desc[idx], 0x03030303, CC_AES_128_BIT_KEY_SIZE);
	FUNC17(&desc[idx], DIN_AES_DOUT);
	FUNC16(&desc[idx],
		      (ctx->opad_tmp_keys_dma_addr + XCBC_MAC_K3_OFFSET),
		      CC_AES_128_BIT_KEY_SIZE, NS_BIT, 0);
	idx++;

	rc = FUNC0(ctx->drvdata, &cc_req, desc, idx);

	if (rc)
		FUNC2(ahash, CRYPTO_TFM_RES_BAD_KEY_LEN);

	FUNC7(dev, ctx->key_params.key_dma_addr,
			 ctx->key_params.keylen, DMA_TO_DEVICE);
	FUNC3(dev, "Unmapped key-buffer: key_dma_addr=%pad keylen=%u\n",
		&ctx->key_params.key_dma_addr, ctx->key_params.keylen);

	FUNC11(ctx->key_params.key);

	return rc;
}