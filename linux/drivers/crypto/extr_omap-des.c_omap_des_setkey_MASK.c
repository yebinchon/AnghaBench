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
struct omap_des_ctx {unsigned int keylen; int /*<<< orphan*/  key; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 struct omap_des_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int FUNC3 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *cipher, const u8 *key,
			   unsigned int keylen)
{
	struct omap_des_ctx *ctx = FUNC0(cipher);
	int err;

	FUNC2("enter, keylen: %d\n", keylen);

	err = FUNC3(cipher, key);
	if (err)
		return err;

	FUNC1(ctx->key, key, keylen);
	ctx->keylen = keylen;

	return 0;
}