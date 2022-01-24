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
struct safexcel_crypto_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctxr_dma; } ;
struct safexcel_cipher_ctx {TYPE_1__ base; struct safexcel_crypto_priv* priv; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 struct safexcel_cipher_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct crypto_async_request*,struct safexcel_crypto_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct crypto_async_request *base,
				    int ring, int *commands, int *results)
{
	struct safexcel_cipher_ctx *ctx = FUNC0(base->tfm);
	struct safexcel_crypto_priv *priv = ctx->priv;
	int ret;

	ret = FUNC1(base, priv, ctx->base.ctxr_dma, ring);
	if (FUNC2(ret))
		return ret;

	*commands = 1;
	*results = 1;

	return 0;
}