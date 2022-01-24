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
struct safexcel_crypto_priv {int flags; } ;
struct safexcel_ahash_export_state {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr; } ;
struct safexcel_ahash_ctx {int /*<<< orphan*/  opad; int /*<<< orphan*/  ipad; TYPE_1__ base; struct safexcel_crypto_priv* priv; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int EIP197_TRC_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ahash*) ; 
 struct safexcel_ahash_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/  const*,unsigned int,struct safexcel_ahash_export_state*,struct safexcel_ahash_export_state*) ; 

__attribute__((used)) static int FUNC5(struct crypto_ahash *tfm, const u8 *key,
				    unsigned int keylen, const char *alg,
				    unsigned int state_sz)
{
	struct safexcel_ahash_ctx *ctx = FUNC1(FUNC0(tfm));
	struct safexcel_crypto_priv *priv = ctx->priv;
	struct safexcel_ahash_export_state istate, ostate;
	int ret;

	ret = FUNC4(alg, key, keylen, &istate, &ostate);
	if (ret)
		return ret;

	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr &&
	    (FUNC2(ctx->ipad, istate.state, state_sz) ||
	     FUNC2(ctx->opad, ostate.state, state_sz)))
		ctx->base.needs_inv = true;

	FUNC3(ctx->ipad, &istate.state, state_sz);
	FUNC3(ctx->opad, &ostate.state, state_sz);

	return 0;
}