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
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {unsigned int enckey_len; int /*<<< orphan*/  key; int /*<<< orphan*/  key_ctx_hdr; } ;
struct _key_ctx {int dummy; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_192 ; 
 unsigned int AES_KEYSIZE_256 ; 
 unsigned char CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ; 
 unsigned char CHCR_KEYCTX_CIPHER_KEY_SIZE_192 ; 
 unsigned char CHCR_KEYCTX_CIPHER_KEY_SIZE_256 ; 
 unsigned char CHCR_KEYCTX_MAC_KEY_SIZE_128 ; 
 unsigned char CHCR_KEYCTX_MAC_KEY_SIZE_192 ; 
 unsigned char CHCR_KEYCTX_MAC_KEY_SIZE_256 ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_tfm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC5 (unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct crypto_aead *aead,
				const u8 *key,
				unsigned int keylen)
{
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC2(aead));
	unsigned char ck_size, mk_size;
	int key_ctx_size = 0;

	key_ctx_size = sizeof(struct _key_ctx) + FUNC5(keylen, 16) * 2;
	if (keylen == AES_KEYSIZE_128) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_128;
		mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_128;
	} else if (keylen == AES_KEYSIZE_192) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_192;
		mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_192;
	} else if (keylen == AES_KEYSIZE_256) {
		ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_256;
		mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_256;
	} else {
		FUNC3((struct crypto_tfm *)aead,
				     CRYPTO_TFM_RES_BAD_KEY_LEN);
		aeadctx->enckey_len = 0;
		return	-EINVAL;
	}
	aeadctx->key_ctx_hdr = FUNC1(ck_size, mk_size, 0, 0,
						key_ctx_size >> 4);
	FUNC4(aeadctx->key, key, keylen);
	aeadctx->enckey_len = keylen;

	return 0;
}