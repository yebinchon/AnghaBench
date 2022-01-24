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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_crypto_req {int dummy; } ;
struct TYPE_3__ {scalar_t__ padded_authkey_dma_addr; } ;
struct TYPE_4__ {TYPE_1__ hmac; } ;
struct cc_aead_ctx {int auth_mode; unsigned int hash_len; int /*<<< orphan*/  drvdata; TYPE_2__ auth_state; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BYPASS ; 
 int /*<<< orphan*/  DIN_HASH ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int DRV_HASH_HW_SHA1 ; 
 unsigned int DRV_HASH_HW_SHA256 ; 
#define  DRV_HASH_SHA1 129 
#define  DRV_HASH_SHA256 128 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HASH_DIGEST_RESULT_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  HASH_PADDING_DISABLED ; 
 int /*<<< orphan*/  HASH_PADDING_ENABLED ; 
 int MAX_AEAD_SETKEY_SEQ ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int /*<<< orphan*/  SETUP_LOAD_STATE0 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 unsigned int SHA1_BLOCK_SIZE ; 
 unsigned int SHA1_DIGEST_SIZE ; 
 unsigned int SHA256_BLOCK_SIZE ; 
 unsigned int SHA256_DIGEST_SIZE ; 
 int /*<<< orphan*/  S_DIN_to_HASH ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int) ; 
 struct cc_aead_ctx* FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,...) ; 
 scalar_t__ FUNC4 (struct device*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct cc_hw_desc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct cc_hw_desc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct cc_hw_desc*,int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct cc_hw_desc*,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct crypto_aead *tfm, const u8 *authkey,
				 unsigned int keylen)
{
	dma_addr_t key_dma_addr = 0;
	struct cc_aead_ctx *ctx = FUNC2(tfm);
	struct device *dev = FUNC7(ctx->drvdata);
	u32 larval_addr = FUNC0(ctx->drvdata, ctx->auth_mode);
	struct cc_crypto_req cc_req = {};
	unsigned int blocksize;
	unsigned int digestsize;
	unsigned int hashmode;
	unsigned int idx = 0;
	int rc = 0;
	u8 *key = NULL;
	struct cc_hw_desc desc[MAX_AEAD_SETKEY_SEQ];
	dma_addr_t padded_authkey_dma_addr =
		ctx->auth_state.hmac.padded_authkey_dma_addr;

	switch (ctx->auth_mode) { /* auth_key required and >0 */
	case DRV_HASH_SHA1:
		blocksize = SHA1_BLOCK_SIZE;
		digestsize = SHA1_DIGEST_SIZE;
		hashmode = DRV_HASH_HW_SHA1;
		break;
	case DRV_HASH_SHA256:
	default:
		blocksize = SHA256_BLOCK_SIZE;
		digestsize = SHA256_DIGEST_SIZE;
		hashmode = DRV_HASH_HW_SHA256;
	}

	if (keylen != 0) {

		key = FUNC9(authkey, keylen, GFP_KERNEL);
		if (!key)
			return -ENOMEM;

		key_dma_addr = FUNC4(dev, (void *)key, keylen,
					      DMA_TO_DEVICE);
		if (FUNC5(dev, key_dma_addr)) {
			FUNC3(dev, "Mapping key va=0x%p len=%u for DMA failed\n",
				*key, keylen);
			FUNC10(key);
			return -ENOMEM;
		}
		if (keylen > blocksize) {
			/* Load hash initial state */
			FUNC8(&desc[idx]);
			FUNC13(&desc[idx], hashmode);
			FUNC15(&desc[idx], larval_addr, digestsize);
			FUNC18(&desc[idx], S_DIN_to_HASH);
			FUNC19(&desc[idx], SETUP_LOAD_STATE0);
			idx++;

			/* Load the hash current length*/
			FUNC8(&desc[idx]);
			FUNC13(&desc[idx], hashmode);
			FUNC14(&desc[idx], 0, ctx->hash_len);
			FUNC12(&desc[idx], HASH_PADDING_ENABLED);
			FUNC18(&desc[idx], S_DIN_to_HASH);
			FUNC19(&desc[idx], SETUP_LOAD_KEY0);
			idx++;

			FUNC8(&desc[idx]);
			FUNC16(&desc[idx], DMA_DLLI,
				     key_dma_addr, keylen, NS_BIT);
			FUNC18(&desc[idx], DIN_HASH);
			idx++;

			/* Get hashed key */
			FUNC8(&desc[idx]);
			FUNC13(&desc[idx], hashmode);
			FUNC17(&desc[idx], padded_authkey_dma_addr,
				      digestsize, NS_BIT, 0);
			FUNC18(&desc[idx], S_HASH_to_DOUT);
			FUNC19(&desc[idx], SETUP_WRITE_STATE0);
			FUNC12(&desc[idx], HASH_PADDING_DISABLED);
			FUNC11(&desc[idx],
					   HASH_DIGEST_RESULT_LITTLE_ENDIAN);
			idx++;

			FUNC8(&desc[idx]);
			FUNC14(&desc[idx], 0, (blocksize - digestsize));
			FUNC18(&desc[idx], BYPASS);
			FUNC17(&desc[idx], (padded_authkey_dma_addr +
				      digestsize), (blocksize - digestsize),
				      NS_BIT, 0);
			idx++;
		} else {
			FUNC8(&desc[idx]);
			FUNC16(&desc[idx], DMA_DLLI, key_dma_addr,
				     keylen, NS_BIT);
			FUNC18(&desc[idx], BYPASS);
			FUNC17(&desc[idx], padded_authkey_dma_addr,
				      keylen, NS_BIT, 0);
			idx++;

			if ((blocksize - keylen) != 0) {
				FUNC8(&desc[idx]);
				FUNC14(&desc[idx], 0,
					      (blocksize - keylen));
				FUNC18(&desc[idx], BYPASS);
				FUNC17(&desc[idx],
					      (padded_authkey_dma_addr +
					       keylen),
					      (blocksize - keylen), NS_BIT, 0);
				idx++;
			}
		}
	} else {
		FUNC8(&desc[idx]);
		FUNC14(&desc[idx], 0, (blocksize - keylen));
		FUNC18(&desc[idx], BYPASS);
		FUNC17(&desc[idx], padded_authkey_dma_addr,
			      blocksize, NS_BIT, 0);
		idx++;
	}

	rc = FUNC1(ctx->drvdata, &cc_req, desc, idx);
	if (rc)
		FUNC3(dev, "send_request() failed (rc=%d)\n", rc);

	if (key_dma_addr)
		FUNC6(dev, key_dma_addr, keylen, DMA_TO_DEVICE);

	FUNC10(key);

	return rc;
}