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
struct TYPE_2__ {int /*<<< orphan*/  fallback_tfm; } ;
struct n2_hmac_ctx {int /*<<< orphan*/  child_shash; TYPE_1__ base; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 struct crypto_ahash* FUNC0 (struct crypto_tfm*) ; 
 struct n2_hmac_ctx* FUNC1 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm)
{
	struct crypto_ahash *ahash = FUNC0(tfm);
	struct n2_hmac_ctx *ctx = FUNC1(ahash);

	FUNC2(ctx->base.fallback_tfm);
	FUNC3(ctx->child_shash);
}