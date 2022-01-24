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
struct qat_alg_ablkcipher_ctx {scalar_t__ enc_cd; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 struct qat_alg_ablkcipher_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int FUNC1 (struct qat_alg_ablkcipher_ctx*,int /*<<< orphan*/  const*,unsigned int,int) ; 
 int FUNC2 (struct qat_alg_ablkcipher_ctx*,int /*<<< orphan*/  const*,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct crypto_ablkcipher *tfm,
				     const u8 *key, unsigned int keylen,
				     int mode)
{
	struct qat_alg_ablkcipher_ctx *ctx = FUNC0(tfm);

	if (ctx->enc_cd)
		return FUNC2(ctx, key, keylen, mode);
	else
		return FUNC1(ctx, key, keylen, mode);
}