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
struct device {int dummy; } ;
struct crypto_authenc_keys {int enckeylen; int authkeylen; int /*<<< orphan*/ * authkey; int /*<<< orphan*/ * enckey; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_crypto_req {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  xcbc_keys; } ;
struct TYPE_4__ {TYPE_1__ xcbc; } ;
struct cc_aead_ctx {int auth_mode; int enc_keylen; int auth_keylen; scalar_t__ cipher_mode; int /*<<< orphan*/  drvdata; TYPE_2__ auth_state; int /*<<< orphan*/  enckey; int /*<<< orphan*/  ctr_nonce; } ;

/* Variables and functions */
 int AES_MIN_KEY_SIZE ; 
 scalar_t__ CC_AES_KEY_SIZE_MAX ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CTR_RFC3686_NONCE_SIZE ; 
 scalar_t__ DRV_CIPHER_CTR ; 
#define  DRV_HASH_NULL 131 
#define  DRV_HASH_SHA1 130 
#define  DRV_HASH_SHA256 129 
#define  DRV_HASH_XCBC_MAC 128 
 int EINVAL ; 
 int ENOTSUPP ; 
 int MAX_AEAD_SETKEY_SEQ ; 
 int FUNC0 (struct crypto_aead*,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int) ; 
 struct cc_aead_ctx* FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aead*) ; 
 int FUNC5 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,struct cc_aead_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 struct device* FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (struct cc_hw_desc*,struct cc_aead_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC13 (struct cc_aead_ctx*) ; 
 unsigned int FUNC14 (struct cc_hw_desc*,struct cc_aead_ctx*) ; 

__attribute__((used)) static int FUNC15(struct crypto_aead *tfm, const u8 *key,
			  unsigned int keylen)
{
	struct cc_aead_ctx *ctx = FUNC2(tfm);
	struct cc_crypto_req cc_req = {};
	struct cc_hw_desc desc[MAX_AEAD_SETKEY_SEQ];
	unsigned int seq_len = 0;
	struct device *dev = FUNC9(ctx->drvdata);
	const u8 *enckey, *authkey;
	int rc;

	FUNC7(dev, "Setting key in context @%p for %s. key=%p keylen=%u\n",
		ctx, FUNC6(FUNC4(tfm)), key, keylen);

	/* STAT_PHASE_0: Init and sanity checks */

	if (ctx->auth_mode != DRV_HASH_NULL) { /* authenc() alg. */
		struct crypto_authenc_keys keys;

		rc = FUNC5(&keys, key, keylen);
		if (rc)
			goto badkey;
		enckey = keys.enckey;
		authkey = keys.authkey;
		ctx->enc_keylen = keys.enckeylen;
		ctx->auth_keylen = keys.authkeylen;

		if (ctx->cipher_mode == DRV_CIPHER_CTR) {
			/* the nonce is stored in bytes at end of key */
			rc = -EINVAL;
			if (ctx->enc_keylen <
			    (AES_MIN_KEY_SIZE + CTR_RFC3686_NONCE_SIZE))
				goto badkey;
			/* Copy nonce from last 4 bytes in CTR key to
			 *  first 4 bytes in CTR IV
			 */
			FUNC11(ctx->ctr_nonce, enckey + ctx->enc_keylen -
			       CTR_RFC3686_NONCE_SIZE, CTR_RFC3686_NONCE_SIZE);
			/* Set CTR key size */
			ctx->enc_keylen -= CTR_RFC3686_NONCE_SIZE;
		}
	} else { /* non-authenc - has just one key */
		enckey = key;
		authkey = NULL;
		ctx->enc_keylen = keylen;
		ctx->auth_keylen = 0;
	}

	rc = FUNC13(ctx);
	if (rc)
		goto badkey;

	/* STAT_PHASE_1: Copy key to ctx */

	/* Get key material */
	FUNC11(ctx->enckey, enckey, ctx->enc_keylen);
	if (ctx->enc_keylen == 24)
		FUNC12(ctx->enckey + 24, 0, CC_AES_KEY_SIZE_MAX - 24);
	if (ctx->auth_mode == DRV_HASH_XCBC_MAC) {
		FUNC11(ctx->auth_state.xcbc.xcbc_keys, authkey,
		       ctx->auth_keylen);
	} else if (ctx->auth_mode != DRV_HASH_NULL) { /* HMAC */
		rc = FUNC0(tfm, authkey, ctx->auth_keylen);
		if (rc)
			goto badkey;
	}

	/* STAT_PHASE_2: Create sequence */

	switch (ctx->auth_mode) {
	case DRV_HASH_SHA1:
	case DRV_HASH_SHA256:
		seq_len = FUNC10(desc, ctx);
		break;
	case DRV_HASH_XCBC_MAC:
		seq_len = FUNC14(desc, ctx);
		break;
	case DRV_HASH_NULL: /* non-authenc modes, e.g., CCM */
		break; /* No auth. key setup */
	default:
		FUNC8(dev, "Unsupported authenc (%d)\n", ctx->auth_mode);
		rc = -ENOTSUPP;
		goto badkey;
	}

	/* STAT_PHASE_3: Submit sequence to HW */

	if (seq_len > 0) { /* For CCM there is no sequence to setup the key */
		rc = FUNC1(ctx->drvdata, &cc_req, desc, seq_len);
		if (rc) {
			FUNC8(dev, "send_request() failed (rc=%d)\n", rc);
			goto setkey_error;
		}
	}

	/* Update STAT_PHASE_3 */
	return rc;

badkey:
	FUNC3(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);

setkey_error:
	return rc;
}