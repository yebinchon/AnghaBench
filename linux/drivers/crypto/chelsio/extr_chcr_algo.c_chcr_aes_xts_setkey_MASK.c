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
struct crypto_ablkcipher {int dummy; } ;
struct ablk_ctx {unsigned int enckey_len; int /*<<< orphan*/  ciph_mode; int /*<<< orphan*/  key_ctx_hdr; int /*<<< orphan*/  key; int /*<<< orphan*/  rrkey; } ;

/* Variables and functions */
 struct ablk_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int AES_KEYSIZE_256 ; 
 int /*<<< orphan*/  CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ; 
 int /*<<< orphan*/  CHCR_KEYCTX_CIPHER_KEY_SIZE_256 ; 
 int /*<<< orphan*/  CHCR_KEYCTX_NO_KEY ; 
 int /*<<< orphan*/  CHCR_SCMD_CIPHER_MODE_AES_XTS ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned int KEY_CONTEXT_HDR_SALT_AND_PAD ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*) ; 
 int FUNC3 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_ablkcipher *cipher, const u8 *key,
			       unsigned int key_len)
{
	struct ablk_ctx *ablkctx = FUNC0(FUNC2(cipher));
	unsigned short context_size = 0;
	int err;

	err = FUNC3(cipher, key, key_len);
	if (err)
		goto badkey_err;

	FUNC6(ablkctx->key, key, key_len);
	ablkctx->enckey_len = key_len;
	FUNC5(ablkctx->rrkey, ablkctx->key, key_len << 2);
	context_size = (KEY_CONTEXT_HDR_SALT_AND_PAD + key_len) >> 4;
	ablkctx->key_ctx_hdr =
		FUNC1((key_len == AES_KEYSIZE_256) ?
				 CHCR_KEYCTX_CIPHER_KEY_SIZE_128 :
				 CHCR_KEYCTX_CIPHER_KEY_SIZE_256,
				 CHCR_KEYCTX_NO_KEY, 1,
				 0, context_size);
	ablkctx->ciph_mode = CHCR_SCMD_CIPHER_MODE_AES_XTS;
	return 0;
badkey_err:
	FUNC4(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
	ablkctx->enckey_len = 0;

	return err;
}