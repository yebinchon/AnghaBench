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
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ RK_CRYPTO_TDES_KEY1_0 ; 
 struct rk_cipher_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC2 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(struct crypto_ablkcipher *cipher,
			 const u8 *key, unsigned int keylen)
{
	struct rk_cipher_ctx *ctx = FUNC0(cipher);
	int err;

	err = FUNC2(cipher, key);
	if (err)
		return err;

	ctx->keylen = keylen;
	FUNC1(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
	return 0;
}