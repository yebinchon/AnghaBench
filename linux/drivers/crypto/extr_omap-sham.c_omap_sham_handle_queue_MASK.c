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
struct omap_sham_reqctx {scalar_t__ op; int flags; scalar_t__ digcnt; int /*<<< orphan*/  total; } ;
struct omap_sham_dev {int /*<<< orphan*/  dev; TYPE_1__* pdata; struct ahash_request* req; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  queue; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;} ;
struct ahash_request {int /*<<< orphan*/  nbytes; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* copy_hash ) (struct ahash_request*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FLAGS_BUSY ; 
 int /*<<< orphan*/  FLAGS_FINUP ; 
 scalar_t__ OP_FINAL ; 
 scalar_t__ OP_UPDATE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 struct ahash_request* FUNC2 (struct crypto_async_request*) ; 
 struct omap_sham_reqctx* FUNC3 (struct ahash_request*) ; 
 struct crypto_async_request* FUNC4 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC7 (struct omap_sham_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahash_request*,int) ; 
 int FUNC9 (struct omap_sham_dev*) ; 
 int FUNC10 (struct ahash_request*,int) ; 
 int FUNC11 (struct omap_sham_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct crypto_async_request*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct omap_sham_dev *dd,
				  struct ahash_request *req)
{
	struct crypto_async_request *async_req, *backlog;
	struct omap_sham_reqctx *ctx;
	unsigned long flags;
	int err = 0, ret = 0;

retry:
	FUNC13(&dd->lock, flags);
	if (req)
		ret = FUNC1(&dd->queue, req);
	if (FUNC17(FLAGS_BUSY, &dd->flags)) {
		FUNC14(&dd->lock, flags);
		return ret;
	}
	backlog = FUNC5(&dd->queue);
	async_req = FUNC4(&dd->queue);
	if (async_req)
		FUNC12(FLAGS_BUSY, &dd->flags);
	FUNC14(&dd->lock, flags);

	if (!async_req)
		return ret;

	if (backlog)
		backlog->complete(backlog, -EINPROGRESS);

	req = FUNC2(async_req);
	dd->req = req;
	ctx = FUNC3(req);

	err = FUNC10(req, ctx->op == OP_UPDATE);
	if (err || !ctx->total)
		goto err1;

	FUNC6(dd->dev, "handling new req, op: %lu, nbytes: %d\n",
						ctx->op, req->nbytes);

	err = FUNC9(dd);
	if (err)
		goto err1;

	if (ctx->digcnt)
		/* request has changed - restore hash */
		dd->pdata->copy_hash(req, 0);

	if (ctx->op == OP_UPDATE) {
		err = FUNC11(dd);
		if (err != -EINPROGRESS && (ctx->flags & FUNC0(FLAGS_FINUP)))
			/* no final() after finup() */
			err = FUNC7(dd);
	} else if (ctx->op == OP_FINAL) {
		err = FUNC7(dd);
	}
err1:
	FUNC6(dd->dev, "exit, err: %d\n", err);

	if (err != -EINPROGRESS) {
		/* done_task will not finish it, so do it here */
		FUNC8(req, err);
		req = NULL;

		/*
		 * Execute next request immediately if there is anything
		 * in queue.
		 */
		goto retry;
	}

	return ret;
}