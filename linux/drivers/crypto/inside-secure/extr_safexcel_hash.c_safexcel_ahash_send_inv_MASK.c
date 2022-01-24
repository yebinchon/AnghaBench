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
struct TYPE_2__ {int /*<<< orphan*/  ctxr_dma; } ;
struct safexcel_ahash_ctx {TYPE_1__ base; int /*<<< orphan*/  priv; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct crypto_async_request*) ; 
 struct safexcel_ahash_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct crypto_async_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct crypto_async_request *async,
				   int ring, int *commands, int *results)
{
	struct ahash_request *areq = FUNC0(async);
	struct safexcel_ahash_ctx *ctx = FUNC1(FUNC2(areq));
	int ret;

	ret = FUNC3(async, ctx->priv,
					ctx->base.ctxr_dma, ring);
	if (FUNC4(ret))
		return ret;

	*commands = 1;
	*results = 1;

	return 0;
}