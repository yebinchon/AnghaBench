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
struct atmel_tdes_ctx {unsigned int keylen; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 struct atmel_tdes_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC2 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(struct crypto_ablkcipher *tfm, const u8 *key,
			   unsigned int keylen)
{
	struct atmel_tdes_ctx *ctx = FUNC0(tfm);
	int err;

	err = FUNC2(tfm, key);
	if (err)
		return err;

	FUNC1(ctx->key, key, keylen);
	ctx->keylen = keylen;

	return 0;
}