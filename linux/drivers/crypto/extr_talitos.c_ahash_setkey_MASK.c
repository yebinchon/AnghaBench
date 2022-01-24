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
typedef  int /*<<< orphan*/  const u8 ;
struct talitos_ctx {int keylen; int /*<<< orphan*/  key; int /*<<< orphan*/  dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int SHA512_DIGEST_SIZE ; 
 unsigned int FUNC0 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 struct talitos_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct crypto_ahash *tfm, const u8 *key,
			unsigned int keylen)
{
	struct talitos_ctx *ctx = FUNC4(FUNC2(tfm));
	struct device *dev = ctx->dev;
	unsigned int blocksize =
			FUNC3(FUNC2(tfm));
	unsigned int digestsize = FUNC0(tfm);
	unsigned int keysize = keylen;
	u8 hash[SHA512_DIGEST_SIZE];
	int ret;

	if (keylen <= blocksize)
		FUNC8(ctx->key, key, keysize);
	else {
		/* Must get the hash of the long key */
		ret = FUNC7(tfm, key, keylen, hash);

		if (ret) {
			FUNC1(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
			return -EINVAL;
		}

		keysize = digestsize;
		FUNC8(ctx->key, hash, digestsize);
	}

	if (ctx->keylen)
		FUNC6(dev, ctx->dma_key, ctx->keylen, DMA_TO_DEVICE);

	ctx->keylen = keysize;
	ctx->dma_key = FUNC5(dev, ctx->key, keysize, DMA_TO_DEVICE);

	return 0;
}