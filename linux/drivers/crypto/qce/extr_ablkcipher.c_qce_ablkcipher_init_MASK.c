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
struct qce_cipher_reqctx {int dummy; } ;
struct qce_cipher_ctx {int /*<<< orphan*/  fallback; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 struct qce_cipher_ctx* FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (struct qce_cipher_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm)
{
	struct qce_cipher_ctx *ctx = FUNC3(tfm);

	FUNC4(ctx, 0, sizeof(*ctx));
	tfm->crt_ablkcipher.reqsize = sizeof(struct qce_cipher_reqctx);

	ctx->fallback = FUNC1(FUNC2(tfm),
						   0, CRYPTO_ALG_NEED_FALLBACK);
	return FUNC0(ctx->fallback);
}