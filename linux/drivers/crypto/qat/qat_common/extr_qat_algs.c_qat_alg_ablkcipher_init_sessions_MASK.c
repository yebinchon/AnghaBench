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
typedef  int /*<<< orphan*/  uint8_t ;
struct qat_alg_ablkcipher_ctx {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qat_alg_ablkcipher_ctx*,int,int /*<<< orphan*/  const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qat_alg_ablkcipher_ctx*,int,int /*<<< orphan*/  const*,unsigned int,int) ; 
 scalar_t__ FUNC3 (unsigned int,int*,int) ; 

__attribute__((used)) static int FUNC4(struct qat_alg_ablkcipher_ctx *ctx,
					    const uint8_t *key,
					    unsigned int keylen,
					    int mode)
{
	int alg;

	if (FUNC3(keylen, &alg, mode))
		goto bad_key;

	FUNC2(ctx, alg, key, keylen, mode);
	FUNC1(ctx, alg, key, keylen, mode);
	return 0;
bad_key:
	FUNC0(ctx->tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
	return -EINVAL;
}