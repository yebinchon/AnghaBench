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
struct spacc_ablk_ctx {unsigned int key_len; int /*<<< orphan*/  key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 unsigned int AES_MAX_KEY_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (struct crypto_ablkcipher*) ; 
 struct spacc_ablk_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *cipher,
				  const u8 *key, unsigned int len)
{
	struct crypto_tfm *tfm = FUNC1(cipher);
	struct spacc_ablk_ctx *ctx = FUNC2(tfm);
	int err = 0;

	if (len > AES_MAX_KEY_SIZE) {
		FUNC0(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		err = -EINVAL;
		goto out;
	}

	FUNC3(ctx->key, key, len);
	ctx->key_len = len;

out:
	return err;
}