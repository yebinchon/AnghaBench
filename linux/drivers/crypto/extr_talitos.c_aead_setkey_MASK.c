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
typedef  int /*<<< orphan*/  u8 ;
struct talitos_ctx {size_t keylen; size_t enckeylen; size_t authkeylen; int /*<<< orphan*/ * key; int /*<<< orphan*/  dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_authenc_keys {size_t authkeylen; scalar_t__ enckeylen; int /*<<< orphan*/  enckey; int /*<<< orphan*/  authkey; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 scalar_t__ TALITOS_MAX_KEY_SIZE ; 
 struct talitos_ctx* FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_authenc_keys*,int) ; 

__attribute__((used)) static int FUNC7(struct crypto_aead *authenc,
		       const u8 *key, unsigned int keylen)
{
	struct talitos_ctx *ctx = FUNC0(authenc);
	struct device *dev = ctx->dev;
	struct crypto_authenc_keys keys;

	if (FUNC2(&keys, key, keylen) != 0)
		goto badkey;

	if (keys.authkeylen + keys.enckeylen > TALITOS_MAX_KEY_SIZE)
		goto badkey;

	if (ctx->keylen)
		FUNC4(dev, ctx->dma_key, ctx->keylen, DMA_TO_DEVICE);

	FUNC5(ctx->key, keys.authkey, keys.authkeylen);
	FUNC5(&ctx->key[keys.authkeylen], keys.enckey, keys.enckeylen);

	ctx->keylen = keys.authkeylen + keys.enckeylen;
	ctx->enckeylen = keys.enckeylen;
	ctx->authkeylen = keys.authkeylen;
	ctx->dma_key = FUNC3(dev, ctx->key, ctx->keylen,
				      DMA_TO_DEVICE);

	FUNC6(&keys, sizeof(keys));
	return 0;

badkey:
	FUNC1(authenc, CRYPTO_TFM_RES_BAD_KEY_LEN);
	FUNC6(&keys, sizeof(keys));
	return -EINVAL;
}