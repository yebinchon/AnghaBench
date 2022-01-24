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
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct chcr_gcm_ctx {int /*<<< orphan*/  ghash_h; } ;
struct chcr_aead_ctx {unsigned int enckey_len; int /*<<< orphan*/  key_ctx_hdr; int /*<<< orphan*/  key; int /*<<< orphan*/  salt; struct crypto_aead* sw_cipher; } ;
struct _key_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  aes ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int AEAD_H_SIZE ; 
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_192 ; 
 unsigned int AES_KEYSIZE_256 ; 
 unsigned int CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ; 
 unsigned int CHCR_KEYCTX_CIPHER_KEY_SIZE_192 ; 
 unsigned int CHCR_KEYCTX_CIPHER_KEY_SIZE_256 ; 
 int /*<<< orphan*/  CHCR_KEYCTX_MAC_KEY_SIZE_128 ; 
 scalar_t__ CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106 ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct chcr_gcm_ctx* FUNC2 (struct chcr_aead_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aes_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aead*,int) ; 
 int FUNC7 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_aead*,int) ; 
 int FUNC9 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_tfm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct crypto_aes_ctx*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,unsigned int) ; 
 int FUNC16 (unsigned int,int) ; 

__attribute__((used)) static int FUNC17(struct crypto_aead *aead, const u8 *key,
			   unsigned int keylen)
{
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC3(aead));
	struct chcr_gcm_ctx *gctx = FUNC2(aeadctx);
	unsigned int ck_size;
	int ret = 0, key_ctx_size = 0;
	struct crypto_aes_ctx aes;

	aeadctx->enckey_len = 0;
	FUNC6(aeadctx->sw_cipher, CRYPTO_TFM_REQ_MASK);
	FUNC8(aeadctx->sw_cipher, FUNC7(aead)
			      & CRYPTO_TFM_REQ_MASK);
	ret = FUNC9(aeadctx->sw_cipher, key, keylen);
	FUNC6(aead, CRYPTO_TFM_RES_MASK);
	FUNC8(aead, FUNC7(aeadctx->sw_cipher) &
			      CRYPTO_TFM_RES_MASK);
	if (ret)
		goto out;

	if (FUNC11(aead) == CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106 &&
	    keylen > 3) {
		keylen -= 4;  /* nonce/salt is present in the last 4 bytes */
		FUNC12(aeadctx->salt, key + keylen, 4);
	}
	if (keylen == AES_KEYSIZE_128) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_128;
	} else if (keylen == AES_KEYSIZE_192) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_192;
	} else if (keylen == AES_KEYSIZE_256) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_256;
	} else {
		FUNC10((struct crypto_tfm *)aead,
				     CRYPTO_TFM_RES_BAD_KEY_LEN);
		FUNC15("GCM: Invalid key length %d\n", keylen);
		ret = -EINVAL;
		goto out;
	}

	FUNC12(aeadctx->key, key, keylen);
	aeadctx->enckey_len = keylen;
	key_ctx_size = sizeof(struct _key_ctx) + FUNC16(keylen, 16) +
		AEAD_H_SIZE;
	aeadctx->key_ctx_hdr = FUNC1(ck_size,
						CHCR_KEYCTX_MAC_KEY_SIZE_128,
						0, 0,
						key_ctx_size >> 4);
	/* Calculate the H = CIPH(K, 0 repeated 16 times).
	 * It will go in key context
	 */
	ret = FUNC5(&aes, key, keylen);
	if (ret) {
		aeadctx->enckey_len = 0;
		goto out;
	}
	FUNC13(gctx->ghash_h, 0, AEAD_H_SIZE);
	FUNC4(&aes, gctx->ghash_h, gctx->ghash_h);
	FUNC14(&aes, sizeof(aes));

out:
	return ret;
}