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
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; int /*<<< orphan*/  key; } ;
struct atmel_aes_xts_ctx {TYPE_1__ base; int /*<<< orphan*/  key2; } ;

/* Variables and functions */
 struct atmel_aes_xts_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *tfm, const u8 *key,
				unsigned int keylen)
{
	struct atmel_aes_xts_ctx *ctx = FUNC0(tfm);
	int err;

	err = FUNC3(FUNC1(tfm), key, keylen);
	if (err)
		return err;

	FUNC2(ctx->base.key, key, keylen/2);
	FUNC2(ctx->key2, key + keylen/2, keylen/2);
	ctx->base.keylen = keylen/2;

	return 0;
}