#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct safexcel_inv_result {int error; int /*<<< orphan*/  completion; } ;
struct safexcel_crypto_priv {int /*<<< orphan*/  dev; TYPE_3__* ring; } ;
struct safexcel_ahash_req {int needs_inv; } ;
struct TYPE_11__ {int ring; int exit_inv; } ;
struct safexcel_ahash_ctx {TYPE_1__ base; struct safexcel_crypto_priv* priv; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_15__ {struct crypto_tfm* tfm; } ;
struct TYPE_14__ {TYPE_6__ base; } ;
struct TYPE_12__ {int /*<<< orphan*/  work; } ;
struct TYPE_13__ {TYPE_2__ work_data; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int /*<<< orphan*/  EIP197_AHASH_REQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  ahash ; 
 struct safexcel_ahash_req* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct safexcel_inv_result*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 struct safexcel_ahash_ctx* FUNC6 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* req ; 
 int /*<<< orphan*/  safexcel_inv_complete ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct crypto_tfm *tfm)
{
	struct safexcel_ahash_ctx *ctx = FUNC6(tfm);
	struct safexcel_crypto_priv *priv = ctx->priv;
	FUNC0(req, ahash, EIP197_AHASH_REQ_SIZE);
	struct safexcel_ahash_req *rctx = FUNC2(req);
	struct safexcel_inv_result result = {};
	int ring = ctx->base.ring;

	FUNC9(req, 0, EIP197_AHASH_REQ_SIZE);

	/* create invalidation request */
	FUNC8(&result.completion);
	FUNC3(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				   safexcel_inv_complete, &result);

	FUNC4(req, FUNC1(tfm));
	ctx = FUNC6(req->base.tfm);
	ctx->base.exit_inv = true;
	rctx->needs_inv = true;

	FUNC11(&priv->ring[ring].queue_lock);
	FUNC5(&priv->ring[ring].queue, &req->base);
	FUNC12(&priv->ring[ring].queue_lock);

	FUNC10(priv->ring[ring].workqueue,
		   &priv->ring[ring].work_data.work);

	FUNC13(&result.completion);

	if (result.error) {
		FUNC7(priv->dev, "hash: completion error (%d)\n",
			 result.error);
		return result.error;
	}

	return 0;
}