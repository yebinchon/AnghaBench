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
struct rk_cipher_ctx {unsigned int keylen; TYPE_1__* dev; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; } ;

/* Variables and functions */
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_192 ; 
 unsigned int AES_KEYSIZE_256 ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 scalar_t__ RK_CRYPTO_AES_KEY_0 ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (struct crypto_ablkcipher*) ; 
 struct rk_cipher_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *cipher,
			 const u8 *key, unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC1(cipher);
	struct rk_cipher_ctx *ctx = FUNC2(tfm);

	if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
	    keylen != AES_KEYSIZE_256) {
		FUNC0(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}
	ctx->keylen = keylen;
	FUNC3(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, key, keylen);
	return 0;
}