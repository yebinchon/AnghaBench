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
struct s5p_aes_ctx {unsigned int keylen; int /*<<< orphan*/  aes_key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_192 ; 
 unsigned int AES_KEYSIZE_256 ; 
 int EINVAL ; 
 struct crypto_tfm* FUNC0 (struct crypto_ablkcipher*) ; 
 struct s5p_aes_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_ablkcipher *cipher,
			  const u8 *key, unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC0(cipher);
	struct s5p_aes_ctx *ctx = FUNC1(tfm);

	if (keylen != AES_KEYSIZE_128 &&
	    keylen != AES_KEYSIZE_192 &&
	    keylen != AES_KEYSIZE_256)
		return -EINVAL;

	FUNC2(ctx->aes_key, key, keylen);
	ctx->keylen = keylen;

	return 0;
}