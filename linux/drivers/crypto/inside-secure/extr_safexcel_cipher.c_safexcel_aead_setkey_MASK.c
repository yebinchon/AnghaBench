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
typedef  int /*<<< orphan*/  u32 ;
struct safexcel_crypto_priv {int flags; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr_dma; } ;
struct safexcel_cipher_ctx {scalar_t__ mode; int alg; int hash_alg; scalar_t__ state_sz; scalar_t__ key_len; int /*<<< orphan*/  opad; int /*<<< orphan*/  ipad; int /*<<< orphan*/  key; TYPE_1__ base; int /*<<< orphan*/  nonce; struct safexcel_crypto_priv* priv; } ;
struct safexcel_ahash_export_state {scalar_t__ state; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_authenc_keys {scalar_t__ enckeylen; scalar_t__ enckey; int /*<<< orphan*/  authkeylen; int /*<<< orphan*/  authkey; } ;
struct crypto_aes_ctx {int dummy; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 scalar_t__ AES_MIN_KEY_SIZE ; 
#define  CONTEXT_CONTROL_CRYPTO_ALG_SHA1 134 
#define  CONTEXT_CONTROL_CRYPTO_ALG_SHA224 133 
#define  CONTEXT_CONTROL_CRYPTO_ALG_SHA256 132 
#define  CONTEXT_CONTROL_CRYPTO_ALG_SHA384 131 
#define  CONTEXT_CONTROL_CRYPTO_ALG_SHA512 130 
 scalar_t__ CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD ; 
 int CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 scalar_t__ CTR_RFC3686_NONCE_SIZE ; 
 int EINVAL ; 
 int EIP197_TRC_CACHE ; 
#define  SAFEXCEL_3DES 129 
#define  SAFEXCEL_AES 128 
 int FUNC0 (struct crypto_aes_ctx*,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*,int) ; 
 struct crypto_tfm* FUNC3 (struct crypto_aead*) ; 
 scalar_t__ FUNC4 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct safexcel_cipher_ctx* FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_authenc_keys*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct safexcel_ahash_export_state*,struct safexcel_ahash_export_state*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct crypto_aead*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct crypto_aead *ctfm, const u8 *key,
				unsigned int len)
{
	struct crypto_tfm *tfm = FUNC3(ctfm);
	struct safexcel_cipher_ctx *ctx = FUNC5(tfm);
	struct safexcel_ahash_export_state istate, ostate;
	struct safexcel_crypto_priv *priv = ctx->priv;
	struct crypto_authenc_keys keys;
	struct crypto_aes_ctx aes;
	int err = -EINVAL;

	if (FUNC4(&keys, key, len) != 0)
		goto badkey;

	if (ctx->mode == CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD) {
		/* Minimum keysize is minimum AES key size + nonce size */
		if (keys.enckeylen < (AES_MIN_KEY_SIZE +
				      CTR_RFC3686_NONCE_SIZE))
			goto badkey;
		/* last 4 bytes of key are the nonce! */
		ctx->nonce = *(u32 *)(keys.enckey + keys.enckeylen -
				      CTR_RFC3686_NONCE_SIZE);
		/* exclude the nonce here */
		keys.enckeylen -= CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD;
	}

	/* Encryption key */
	switch (ctx->alg) {
	case SAFEXCEL_3DES:
		err = FUNC12(ctfm, keys.enckey, keys.enckeylen);
		if (FUNC11(err))
			goto badkey_expflags;
		break;
	case SAFEXCEL_AES:
		err = FUNC0(&aes, keys.enckey, keys.enckeylen);
		if (FUNC11(err))
			goto badkey;
		break;
	default:
		FUNC6(priv->dev, "aead: unsupported cipher algorithm\n");
		goto badkey;
	}

	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma &&
	    FUNC7(ctx->key, keys.enckey, keys.enckeylen))
		ctx->base.needs_inv = true;

	/* Auth key */
	switch (ctx->hash_alg) {
	case CONTEXT_CONTROL_CRYPTO_ALG_SHA1:
		if (FUNC10("safexcel-sha1", keys.authkey,
					 keys.authkeylen, &istate, &ostate))
			goto badkey;
		break;
	case CONTEXT_CONTROL_CRYPTO_ALG_SHA224:
		if (FUNC10("safexcel-sha224", keys.authkey,
					 keys.authkeylen, &istate, &ostate))
			goto badkey;
		break;
	case CONTEXT_CONTROL_CRYPTO_ALG_SHA256:
		if (FUNC10("safexcel-sha256", keys.authkey,
					 keys.authkeylen, &istate, &ostate))
			goto badkey;
		break;
	case CONTEXT_CONTROL_CRYPTO_ALG_SHA384:
		if (FUNC10("safexcel-sha384", keys.authkey,
					 keys.authkeylen, &istate, &ostate))
			goto badkey;
		break;
	case CONTEXT_CONTROL_CRYPTO_ALG_SHA512:
		if (FUNC10("safexcel-sha512", keys.authkey,
					 keys.authkeylen, &istate, &ostate))
			goto badkey;
		break;
	default:
		FUNC6(priv->dev, "aead: unsupported hash algorithm\n");
		goto badkey;
	}

	FUNC2(ctfm, FUNC1(ctfm) &
				    CRYPTO_TFM_RES_MASK);

	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma &&
	    (FUNC7(ctx->ipad, istate.state, ctx->state_sz) ||
	     FUNC7(ctx->opad, ostate.state, ctx->state_sz)))
		ctx->base.needs_inv = true;

	/* Now copy the keys into the context */
	FUNC8(ctx->key, &keys.enckey, keys.enckeylen);
	ctx->key_len = keys.enckeylen;

	FUNC8(ctx->ipad, &istate.state, ctx->state_sz);
	FUNC8(ctx->opad, &ostate.state, ctx->state_sz);

	FUNC9(&keys, sizeof(keys));
	return 0;

badkey:
	FUNC2(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
badkey_expflags:
	FUNC9(&keys, sizeof(keys));
	return err;
}