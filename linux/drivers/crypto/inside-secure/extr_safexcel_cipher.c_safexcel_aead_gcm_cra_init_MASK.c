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
struct safexcel_cipher_ctx {int /*<<< orphan*/  hkaes; int /*<<< orphan*/  mode; int /*<<< orphan*/  xcm; int /*<<< orphan*/  state_sz; int /*<<< orphan*/  hash_alg; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_CONTROL_CRYPTO_ALG_GHASH ; 
 int /*<<< orphan*/  CONTEXT_CONTROL_CRYPTO_MODE_XCM ; 
 int /*<<< orphan*/  EIP197_XCM_MODE_GCM ; 
 int /*<<< orphan*/  GHASH_BLOCK_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct safexcel_cipher_ctx* FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm)
{
	struct safexcel_cipher_ctx *ctx = FUNC3(tfm);

	FUNC4(tfm);
	ctx->hash_alg = CONTEXT_CONTROL_CRYPTO_ALG_GHASH;
	ctx->state_sz = GHASH_BLOCK_SIZE;
	ctx->xcm = EIP197_XCM_MODE_GCM;
	ctx->mode = CONTEXT_CONTROL_CRYPTO_MODE_XCM; /* override default */

	ctx->hkaes = FUNC2("aes", 0, 0);
	if (FUNC0(ctx->hkaes))
		return FUNC1(ctx->hkaes);

	return 0;
}