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
typedef  int u32 ;
struct tls12_crypto_info_aes_gcm_128 {unsigned char* key; unsigned char* salt; } ;
struct crypto_aes_ctx {int dummy; } ;
struct TYPE_2__ {int keylen; int /*<<< orphan*/  crypto_info; } ;
struct chtls_sock {TYPE_1__ tlshws; } ;
struct _key_ctx {unsigned char* salt; unsigned char* key; int /*<<< orphan*/  ctx_hdr; } ;
typedef  int /*<<< orphan*/  aes ;

/* Variables and functions */
 int AEAD_H_SIZE ; 
 int AES_KEYSIZE_128 ; 
 int CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ; 
 int /*<<< orphan*/  CHCR_KEYCTX_MAC_KEY_SIZE_128 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int TLS_CIPHER_AES_GCM_128_SALT_SIZE ; 
 int TLS_RX ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aes_ctx*,unsigned char*,unsigned char*) ; 
 int FUNC3 (struct crypto_aes_ctx*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct _key_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_aes_ctx*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct chtls_sock *csk,
			  struct _key_ctx *kctx,
			  u32 keylen, u32 optname)
{
	unsigned char key[AES_KEYSIZE_128];
	struct tls12_crypto_info_aes_gcm_128 *gcm_ctx;
	unsigned char ghash_h[AEAD_H_SIZE];
	int ck_size, key_ctx_size;
	struct crypto_aes_ctx aes;
	int ret;

	gcm_ctx = (struct tls12_crypto_info_aes_gcm_128 *)
		  &csk->tlshws.crypto_info;

	key_ctx_size = sizeof(struct _key_ctx) +
		       FUNC9(keylen, 16) + AEAD_H_SIZE;

	if (keylen == AES_KEYSIZE_128) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_128;
	} else {
		FUNC8("GCM: Invalid key length %d\n", keylen);
		return -EINVAL;
	}
	FUNC5(key, gcm_ctx->key, keylen);

	/* Calculate the H = CIPH(K, 0 repeated 16 times).
	 * It will go in key context
	 */
	ret = FUNC3(&aes, key, keylen);
	if (ret)
		return ret;

	FUNC6(ghash_h, 0, AEAD_H_SIZE);
	FUNC2(&aes, ghash_h, ghash_h);
	FUNC7(&aes, sizeof(aes));
	csk->tlshws.keylen = key_ctx_size;

	/* Copy the Key context */
	if (optname == TLS_RX) {
		int key_ctx;

		key_ctx = ((key_ctx_size >> 4) << 3);
		kctx->ctx_hdr = FUNC0(ck_size,
						 CHCR_KEYCTX_MAC_KEY_SIZE_128,
						 0, 0, key_ctx);
		FUNC4(kctx);
	} else {
		kctx->ctx_hdr = FUNC1(ck_size,
						 CHCR_KEYCTX_MAC_KEY_SIZE_128,
						 0, 0, key_ctx_size >> 4);
	}

	FUNC5(kctx->salt, gcm_ctx->salt, TLS_CIPHER_AES_GCM_128_SALT_SIZE);
	FUNC5(kctx->key, gcm_ctx->key, keylen);
	FUNC5(kctx->key + keylen, ghash_h, AEAD_H_SIZE);
	/* erase key info from driver */
	FUNC6(gcm_ctx->key, 0, keylen);

	return 0;
}