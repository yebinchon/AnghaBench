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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct safexcel_crypto_priv {int flags; } ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr_dma; } ;
struct safexcel_cipher_ctx {scalar_t__* key; unsigned int key_len; TYPE_1__ base; struct safexcel_crypto_priv* priv; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int /*<<< orphan*/ * key_enc; } ;
typedef  int /*<<< orphan*/  aes ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EIP197_TRC_CACHE ; 
 int FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC3 (struct crypto_skcipher*) ; 
 struct safexcel_cipher_ctx* FUNC4 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_aes_ctx*,int) ; 
 int FUNC6 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *ctfm,
					   const u8 *key, unsigned int len)
{
	struct crypto_tfm *tfm = FUNC3(ctfm);
	struct safexcel_cipher_ctx *ctx = FUNC4(tfm);
	struct safexcel_crypto_priv *priv = ctx->priv;
	struct crypto_aes_ctx aes;
	int ret, i;
	unsigned int keylen;

	/* Check for illegal XTS keys */
	ret = FUNC6(ctfm, key, len);
	if (ret)
		return ret;

	/* Only half of the key data is cipher key */
	keylen = (len >> 1);
	ret = FUNC0(&aes, key, keylen);
	if (ret) {
		FUNC2(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return ret;
	}

	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma) {
		for (i = 0; i < keylen / sizeof(u32); i++) {
			if (ctx->key[i] != FUNC1(aes.key_enc[i])) {
				ctx->base.needs_inv = true;
				break;
			}
		}
	}

	for (i = 0; i < keylen / sizeof(u32); i++)
		ctx->key[i] = FUNC1(aes.key_enc[i]);

	/* The other half is the tweak key */
	ret = FUNC0(&aes, (u8 *)(key + keylen), keylen);
	if (ret) {
		FUNC2(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return ret;
	}

	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma) {
		for (i = 0; i < keylen / sizeof(u32); i++) {
			if (ctx->key[i + keylen / sizeof(u32)] !=
			    FUNC1(aes.key_enc[i])) {
				ctx->base.needs_inv = true;
				break;
			}
		}
	}

	for (i = 0; i < keylen / sizeof(u32); i++)
		ctx->key[i + keylen / sizeof(u32)] =
			FUNC1(aes.key_enc[i]);

	ctx->key_len = keylen << 1;

	FUNC5(&aes, sizeof(aes));
	return 0;
}