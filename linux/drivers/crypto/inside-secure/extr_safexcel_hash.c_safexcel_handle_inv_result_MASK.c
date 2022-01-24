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
struct safexcel_result_desc {int dummy; } ;
struct safexcel_crypto_priv {TYPE_3__* ring; int /*<<< orphan*/  context_pool; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int ring; int /*<<< orphan*/  ctxr_dma; int /*<<< orphan*/  ctxr; scalar_t__ exit_inv; } ;
struct safexcel_ahash_ctx {TYPE_1__ base; } ;
struct crypto_async_request {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct TYPE_6__ {TYPE_2__ work_data; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  rdr; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct safexcel_result_desc*) ; 
 int FUNC1 (struct safexcel_result_desc*) ; 
 struct ahash_request* FUNC2 (struct crypto_async_request*) ; 
 struct safexcel_ahash_ctx* FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct safexcel_crypto_priv*,int) ; 
 int FUNC10 (struct safexcel_crypto_priv*,struct safexcel_result_desc*) ; 
 struct safexcel_result_desc* FUNC11 (struct safexcel_crypto_priv*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct safexcel_crypto_priv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct safexcel_crypto_priv *priv,
				      int ring,
				      struct crypto_async_request *async,
				      bool *should_complete, int *ret)
{
	struct safexcel_result_desc *rdesc;
	struct ahash_request *areq = FUNC2(async);
	struct crypto_ahash *ahash = FUNC4(areq);
	struct safexcel_ahash_ctx *ctx = FUNC3(ahash);
	int enq_ret;

	*ret = 0;

	rdesc = FUNC11(priv, &priv->ring[ring].rdr);
	if (FUNC0(rdesc)) {
		FUNC6(priv->dev,
			"hash: invalidate: could not retrieve the result descriptor\n");
		*ret = FUNC1(rdesc);
	} else {
		*ret = FUNC10(priv, rdesc);
	}

	FUNC9(priv, ring);

	if (ctx->base.exit_inv) {
		FUNC7(priv->context_pool, ctx->base.ctxr,
			      ctx->base.ctxr_dma);

		*should_complete = true;
		return 1;
	}

	ring = FUNC12(priv);
	ctx->base.ring = ring;

	FUNC13(&priv->ring[ring].queue_lock);
	enq_ret = FUNC5(&priv->ring[ring].queue, async);
	FUNC14(&priv->ring[ring].queue_lock);

	if (enq_ret != -EINPROGRESS)
		*ret = enq_ret;

	FUNC8(priv->ring[ring].workqueue,
		   &priv->ring[ring].work_data.work);

	*should_complete = false;

	return 1;
}