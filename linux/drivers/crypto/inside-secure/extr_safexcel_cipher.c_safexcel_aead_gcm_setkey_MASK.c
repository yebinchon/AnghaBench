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
struct crypto_aes_ctx {int /*<<< orphan*/ * key_enc; } ;
typedef  struct crypto_aes_ctx u32 ;
struct safexcel_crypto_priv {int flags; } ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr_dma; } ;
struct safexcel_cipher_ctx {scalar_t__* key; unsigned int key_len; scalar_t__* ipad; TYPE_1__ base; int /*<<< orphan*/  hkaes; struct safexcel_crypto_priv* priv; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  aes ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EIP197_TRC_CACHE ; 
 int FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC1 (struct crypto_aes_ctx) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aead*,int) ; 
 struct crypto_tfm* FUNC5 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct safexcel_cipher_ctx* FUNC11 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_aes_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_aes_ctx*,int) ; 

__attribute__((used)) static int FUNC14(struct crypto_aead *ctfm, const u8 *key,
				    unsigned int len)
{
	struct crypto_tfm *tfm = FUNC5(ctfm);
	struct safexcel_cipher_ctx *ctx = FUNC11(tfm);
	struct safexcel_crypto_priv *priv = ctx->priv;
	struct crypto_aes_ctx aes;
	u32 hashkey[AES_BLOCK_SIZE >> 2];
	int ret, i;

	ret = FUNC0(&aes, key, len);
	if (ret) {
		FUNC4(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		FUNC13(&aes, sizeof(aes));
		return ret;
	}

	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma) {
		for (i = 0; i < len / sizeof(u32); i++) {
			if (ctx->key[i] != FUNC2(aes.key_enc[i])) {
				ctx->base.needs_inv = true;
				break;
			}
		}
	}

	for (i = 0; i < len / sizeof(u32); i++)
		ctx->key[i] = FUNC2(aes.key_enc[i]);

	ctx->key_len = len;

	/* Compute hash key by encrypting zeroes with cipher key */
	FUNC6(ctx->hkaes, CRYPTO_TFM_REQ_MASK);
	FUNC9(ctx->hkaes, FUNC3(ctfm) &
				CRYPTO_TFM_REQ_MASK);
	ret = FUNC10(ctx->hkaes, key, len);
	FUNC4(ctfm, FUNC8(ctx->hkaes) &
			      CRYPTO_TFM_RES_MASK);
	if (ret)
		return ret;

	FUNC12(hashkey, 0, AES_BLOCK_SIZE);
	FUNC7(ctx->hkaes, (u8 *)hashkey, (u8 *)hashkey);

	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma) {
		for (i = 0; i < AES_BLOCK_SIZE / sizeof(u32); i++) {
			if (ctx->ipad[i] != FUNC1(hashkey[i])) {
				ctx->base.needs_inv = true;
				break;
			}
		}
	}

	for (i = 0; i < AES_BLOCK_SIZE / sizeof(u32); i++)
		ctx->ipad[i] = FUNC1(hashkey[i]);

	FUNC13(hashkey, AES_BLOCK_SIZE);
	FUNC13(&aes, sizeof(aes));
	return 0;
}