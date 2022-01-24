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
struct crypto_authenc_keys {scalar_t__ enckeylen; scalar_t__ enckey; } ;
struct crypto_aead {int dummy; } ;
struct chcr_authenc_ctx {int /*<<< orphan*/  auth_mode; int /*<<< orphan*/  dec_rrkey; } ;
struct chcr_aead_ctx {int enckey_len; int /*<<< orphan*/  key_ctx_hdr; int /*<<< orphan*/  key; int /*<<< orphan*/  nonce; struct crypto_aead* sw_cipher; } ;
struct _key_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AES_KEYSIZE_128 ; 
 scalar_t__ AES_KEYSIZE_192 ; 
 scalar_t__ AES_KEYSIZE_256 ; 
 struct chcr_authenc_ctx* FUNC1 (struct chcr_aead_ctx*) ; 
 unsigned char CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ; 
 unsigned char CHCR_KEYCTX_CIPHER_KEY_SIZE_192 ; 
 unsigned char CHCR_KEYCTX_CIPHER_KEY_SIZE_256 ; 
 int /*<<< orphan*/  CHCR_KEYCTX_NO_KEY ; 
 int /*<<< orphan*/  CHCR_SCMD_AUTH_MODE_NOP ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_CBC_NULL ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_CBC_SHA ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_CTR_NULL ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_CTR_SHA ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 scalar_t__ CTR_RFC3686_NONCE_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aead*,int) ; 
 int FUNC5 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aead*,int) ; 
 int FUNC7 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC8 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC9 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_authenc_keys*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__) ; 
 int FUNC14 (int,int) ; 

__attribute__((used)) static int FUNC15(struct crypto_aead *authenc,
					const u8 *key, unsigned int keylen)
{
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC3(authenc));
	struct chcr_authenc_ctx *actx = FUNC1(aeadctx);
	struct crypto_authenc_keys keys;
	int err;
	/* it contains auth and cipher key both*/
	unsigned int subtype;
	int key_ctx_len = 0;
	unsigned char ck_size = 0;

	FUNC4(aeadctx->sw_cipher, CRYPTO_TFM_REQ_MASK);
	FUNC6(aeadctx->sw_cipher, FUNC5(authenc)
			      & CRYPTO_TFM_REQ_MASK);
	err = FUNC7(aeadctx->sw_cipher, key, keylen);
	FUNC4(authenc, CRYPTO_TFM_RES_MASK);
	FUNC6(authenc, FUNC5(aeadctx->sw_cipher)
			      & CRYPTO_TFM_RES_MASK);
	if (err)
		goto out;

	if (FUNC8(&keys, key, keylen) != 0) {
		FUNC6(authenc, CRYPTO_TFM_RES_BAD_KEY_LEN);
		goto out;
	}
	subtype = FUNC9(authenc);
	if (subtype == CRYPTO_ALG_SUB_TYPE_CTR_SHA ||
	    subtype == CRYPTO_ALG_SUB_TYPE_CTR_NULL) {
		if (keys.enckeylen < CTR_RFC3686_NONCE_SIZE)
			goto out;
		FUNC11(aeadctx->nonce, keys.enckey + (keys.enckeylen
			- CTR_RFC3686_NONCE_SIZE), CTR_RFC3686_NONCE_SIZE);
		keys.enckeylen -= CTR_RFC3686_NONCE_SIZE;
	}
	if (keys.enckeylen == AES_KEYSIZE_128) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_128;
	} else if (keys.enckeylen == AES_KEYSIZE_192) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_192;
	} else if (keys.enckeylen == AES_KEYSIZE_256) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_256;
	} else {
		FUNC13("chcr : Unsupported cipher key %d\n", keys.enckeylen);
		goto out;
	}
	FUNC11(aeadctx->key, keys.enckey, keys.enckeylen);
	aeadctx->enckey_len = keys.enckeylen;
	if (subtype == CRYPTO_ALG_SUB_TYPE_CBC_SHA ||
	    subtype == CRYPTO_ALG_SUB_TYPE_CBC_NULL) {
		FUNC10(actx->dec_rrkey, aeadctx->key,
				aeadctx->enckey_len << 3);
	}
	key_ctx_len =  sizeof(struct _key_ctx) + FUNC14(keys.enckeylen, 16);

	aeadctx->key_ctx_hdr = FUNC2(ck_size, CHCR_KEYCTX_NO_KEY, 0,
						0, key_ctx_len >> 4);
	actx->auth_mode = CHCR_SCMD_AUTH_MODE_NOP;
	FUNC12(&keys, sizeof(keys));
	return 0;
out:
	aeadctx->enckey_len = 0;
	FUNC12(&keys, sizeof(keys));
	return -EINVAL;
}