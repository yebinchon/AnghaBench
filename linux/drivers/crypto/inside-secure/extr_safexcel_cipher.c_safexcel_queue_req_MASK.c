#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct safexcel_crypto_priv {int flags; TYPE_3__* ring; int /*<<< orphan*/  context_pool; } ;
struct safexcel_cipher_req {int needs_inv; int direction; } ;
struct TYPE_4__ {int needs_inv; int ring; scalar_t__ ctxr; int /*<<< orphan*/  ctxr_dma; } ;
struct safexcel_cipher_ctx {TYPE_1__ base; struct safexcel_crypto_priv* priv; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
typedef  enum safexcel_cipher_direction { ____Placeholder_safexcel_cipher_direction } safexcel_cipher_direction ;
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct TYPE_6__ {TYPE_2__ work_data; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_async_request) ; 
 int EIP197_TRC_CACHE ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 struct safexcel_cipher_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct safexcel_crypto_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct crypto_async_request *base,
			struct safexcel_cipher_req *sreq,
			enum safexcel_cipher_direction dir)
{
	struct safexcel_cipher_ctx *ctx = FUNC2(base->tfm);
	struct safexcel_crypto_priv *priv = ctx->priv;
	int ret, ring;

	sreq->needs_inv = false;
	sreq->direction = dir;

	if (ctx->base.ctxr) {
		if (priv->flags & EIP197_TRC_CACHE && ctx->base.needs_inv) {
			sreq->needs_inv = true;
			ctx->base.needs_inv = false;
		}
	} else {
		ctx->base.ring = FUNC5(priv);
		ctx->base.ctxr = FUNC3(priv->context_pool,
						 FUNC0(*base),
						 &ctx->base.ctxr_dma);
		if (!ctx->base.ctxr)
			return -ENOMEM;
	}

	ring = ctx->base.ring;

	FUNC6(&priv->ring[ring].queue_lock);
	ret = FUNC1(&priv->ring[ring].queue, base);
	FUNC7(&priv->ring[ring].queue_lock);

	FUNC4(priv->ring[ring].workqueue,
		   &priv->ring[ring].work_data.work);

	return ret;
}