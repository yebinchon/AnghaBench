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
struct crypto_ahash {int /*<<< orphan*/  base; } ;
struct TYPE_2__ {unsigned int keylen; unsigned int keylen_pad; int algtype; int key_inline; int /*<<< orphan*/  key_dma; int /*<<< orphan*/  const* key_virt; } ;
struct caam_hash_ctx {TYPE_1__ adata; int /*<<< orphan*/  dev; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 unsigned int CAAM_MAX_HASH_KEY_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int OP_ALG_ALGSEL_MASK ; 
 int FUNC0 (struct crypto_ahash*) ; 
 struct caam_hash_ctx* FUNC1 (struct crypto_ahash*) ; 
 unsigned int FUNC2 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct caam_hash_ctx*,unsigned int*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct crypto_ahash *ahash, const u8 *key,
			unsigned int keylen)
{
	struct caam_hash_ctx *ctx = FUNC1(ahash);
	unsigned int blocksize = FUNC4(&ahash->base);
	unsigned int digestsize = FUNC2(ahash);
	int ret;
	u8 *hashed_key = NULL;

	FUNC5(ctx->dev, "keylen %d blocksize %d\n", keylen, blocksize);

	if (keylen > blocksize) {
		hashed_key = FUNC9(key, keylen, GFP_KERNEL | GFP_DMA);
		if (!hashed_key)
			return -ENOMEM;
		ret = FUNC7(ctx, &keylen, hashed_key, digestsize);
		if (ret)
			goto bad_free_key;
		key = hashed_key;
	}

	ctx->adata.keylen = keylen;
	ctx->adata.keylen_pad = FUNC11(ctx->adata.algtype &
					      OP_ALG_ALGSEL_MASK);
	if (ctx->adata.keylen_pad > CAAM_MAX_HASH_KEY_SIZE)
		goto bad_free_key;

	ctx->adata.key_virt = key;
	ctx->adata.key_inline = true;

	/*
	 * In case |user key| > |derived key|, using DKP<imm,imm> would result
	 * in invalid opcodes (last bytes of user key) in the resulting
	 * descriptor. Use DKP<ptr,imm> instead => both virtual and dma key
	 * addresses are needed.
	 */
	if (keylen > ctx->adata.keylen_pad) {
		FUNC10(ctx->key, key, keylen);
		FUNC6(ctx->dev, ctx->adata.key_dma,
					   ctx->adata.keylen_pad,
					   DMA_TO_DEVICE);
	}

	ret = FUNC0(ahash);
	FUNC8(hashed_key);
	return ret;
bad_free_key:
	FUNC8(hashed_key);
	FUNC3(ahash, CRYPTO_TFM_RES_BAD_KEY_LEN);
	return -EINVAL;
}