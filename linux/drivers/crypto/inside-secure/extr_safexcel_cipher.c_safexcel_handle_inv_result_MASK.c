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
struct safexcel_cipher_req {int /*<<< orphan*/  rdescs; } ;
struct TYPE_4__ {int ring; int /*<<< orphan*/  ctxr_dma; int /*<<< orphan*/  ctxr; scalar_t__ exit_inv; } ;
struct safexcel_cipher_ctx {TYPE_1__ base; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct TYPE_6__ {TYPE_2__ work_data; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  rdr; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct safexcel_result_desc*) ; 
 int FUNC1 (struct safexcel_result_desc*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 struct safexcel_cipher_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct safexcel_crypto_priv*,int) ; 
 int FUNC9 (struct safexcel_crypto_priv*,struct safexcel_result_desc*) ; 
 struct safexcel_result_desc* FUNC10 (struct safexcel_crypto_priv*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct safexcel_crypto_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct safexcel_crypto_priv *priv,
				      int ring,
				      struct crypto_async_request *base,
				      struct safexcel_cipher_req *sreq,
				      bool *should_complete, int *ret)
{
	struct safexcel_cipher_ctx *ctx = FUNC3(base->tfm);
	struct safexcel_result_desc *rdesc;
	int ndesc = 0, enq_ret;

	*ret = 0;

	if (FUNC14(!sreq->rdescs))
		return 0;

	while (sreq->rdescs--) {
		rdesc = FUNC10(priv, &priv->ring[ring].rdr);
		if (FUNC0(rdesc)) {
			FUNC4(priv->dev,
				"cipher: invalidate: could not retrieve the result descriptor\n");
			*ret = FUNC1(rdesc);
			break;
		}

		if (FUNC6(!*ret))
			*ret = FUNC9(priv, rdesc);

		ndesc++;
	}

	FUNC8(priv, ring);

	if (ctx->base.exit_inv) {
		FUNC5(priv->context_pool, ctx->base.ctxr,
			      ctx->base.ctxr_dma);

		*should_complete = true;

		return ndesc;
	}

	ring = FUNC11(priv);
	ctx->base.ring = ring;

	FUNC12(&priv->ring[ring].queue_lock);
	enq_ret = FUNC2(&priv->ring[ring].queue, base);
	FUNC13(&priv->ring[ring].queue_lock);

	if (enq_ret != -EINPROGRESS)
		*ret = enq_ret;

	FUNC7(priv->ring[ring].workqueue,
		   &priv->ring[ring].work_data.work);

	*should_complete = false;

	return ndesc;
}