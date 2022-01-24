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
struct atmel_aes_base_ctx {unsigned int keylen; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_192 ; 
 unsigned int AES_KEYSIZE_256 ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 struct atmel_aes_base_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_ablkcipher *tfm, const u8 *key,
			   unsigned int keylen)
{
	struct atmel_aes_base_ctx *ctx = FUNC0(tfm);

	if (keylen != AES_KEYSIZE_128 &&
	    keylen != AES_KEYSIZE_192 &&
	    keylen != AES_KEYSIZE_256) {
		FUNC1(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	FUNC2(ctx->key, key, keylen);
	ctx->keylen = keylen;

	return 0;
}