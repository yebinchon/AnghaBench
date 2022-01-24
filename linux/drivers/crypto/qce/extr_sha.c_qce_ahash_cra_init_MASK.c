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
struct qce_sha_reqctx {int dummy; } ;
struct qce_sha_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 struct crypto_ahash* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ahash*,int) ; 
 struct qce_sha_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (struct qce_sha_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm)
{
	struct crypto_ahash *ahash = FUNC0(tfm);
	struct qce_sha_ctx *ctx = FUNC2(tfm);

	FUNC1(ahash, sizeof(struct qce_sha_reqctx));
	FUNC3(ctx, 0, sizeof(*ctx));
	return 0;
}