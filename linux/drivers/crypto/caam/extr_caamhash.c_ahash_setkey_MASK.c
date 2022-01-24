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
struct device {int /*<<< orphan*/  parent; } ;
struct crypto_ahash {int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int key_inline; unsigned int keylen; unsigned int keylen_pad; int algtype; int /*<<< orphan*/  key_dma; } ;
struct caam_hash_ctx {TYPE_1__ adata; int /*<<< orphan*/  key; struct device* jrdev; } ;
struct caam_drv_private {int era; } ;

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
 int FUNC2 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,unsigned int) ; 
 struct caam_drv_private* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/  const*,unsigned int,unsigned int) ; 
 int FUNC9 (struct caam_hash_ctx*,unsigned int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/  const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct crypto_ahash *ahash,
			const u8 *key, unsigned int keylen)
{
	struct caam_hash_ctx *ctx = FUNC1(ahash);
	struct device *jrdev = ctx->jrdev;
	int blocksize = FUNC4(&ahash->base);
	int digestsize = FUNC2(ahash);
	struct caam_drv_private *ctrlpriv = FUNC6(ctx->jrdev->parent);
	int ret;
	u8 *hashed_key = NULL;

	FUNC5(jrdev, "keylen %d\n", keylen);

	if (keylen > blocksize) {
		hashed_key = FUNC11(key, keylen, GFP_KERNEL | GFP_DMA);
		if (!hashed_key)
			return -ENOMEM;
		ret = FUNC9(ctx, &keylen, hashed_key, digestsize);
		if (ret)
			goto bad_free_key;
		key = hashed_key;
	}

	/*
	 * If DKP is supported, use it in the shared descriptor to generate
	 * the split key.
	 */
	if (ctrlpriv->era >= 6) {
		ctx->adata.key_inline = true;
		ctx->adata.keylen = keylen;
		ctx->adata.keylen_pad = FUNC13(ctx->adata.algtype &
						      OP_ALG_ALGSEL_MASK);

		if (ctx->adata.keylen_pad > CAAM_MAX_HASH_KEY_SIZE)
			goto bad_free_key;

		FUNC12(ctx->key, key, keylen);

		/*
		 * In case |user key| > |derived key|, using DKP<imm,imm>
		 * would result in invalid opcodes (last bytes of user key) in
		 * the resulting descriptor. Use DKP<ptr,imm> instead => both
		 * virtual and dma key addresses are needed.
		 */
		if (keylen > ctx->adata.keylen_pad)
			FUNC7(ctx->jrdev,
						   ctx->adata.key_dma,
						   ctx->adata.keylen_pad,
						   DMA_TO_DEVICE);
	} else {
		ret = FUNC8(ctx->jrdev, ctx->key, &ctx->adata, key,
				    keylen, CAAM_MAX_HASH_KEY_SIZE);
		if (ret)
			goto bad_free_key;
	}

	FUNC10(hashed_key);
	return FUNC0(ahash);
 bad_free_key:
	FUNC10(hashed_key);
	FUNC3(ahash, CRYPTO_TFM_RES_BAD_KEY_LEN);
	return -EINVAL;
}