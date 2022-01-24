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
struct stm32_hash_ctx {unsigned int keylen; int /*<<< orphan*/  key; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int HASH_MAX_KEY_SIZE ; 
 struct stm32_hash_ctx* FUNC0 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct crypto_ahash *tfm,
			     const u8 *key, unsigned int keylen)
{
	struct stm32_hash_ctx *ctx = FUNC0(tfm);

	if (keylen <= HASH_MAX_KEY_SIZE) {
		FUNC1(ctx->key, key, keylen);
		ctx->keylen = keylen;
	} else {
		return -ENOMEM;
	}

	return 0;
}