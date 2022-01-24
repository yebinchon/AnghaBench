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
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;} ;
struct atmel_tdes_reqctx {int mode; } ;
struct atmel_tdes_dev {int flags; int /*<<< orphan*/  queue_task; struct atmel_tdes_ctx* ctx; int /*<<< orphan*/  out_sg; scalar_t__ out_offset; int /*<<< orphan*/  in_sg; scalar_t__ in_offset; int /*<<< orphan*/  total; struct ablkcipher_request* req; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct atmel_tdes_ctx {struct atmel_tdes_dev* dd; } ;
struct ablkcipher_request {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int TDES_FLAGS_BUSY ; 
 int TDES_FLAGS_MODE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ablkcipher_request*) ; 
 struct ablkcipher_request* FUNC1 (struct crypto_async_request*) ; 
 struct atmel_tdes_reqctx* FUNC2 (struct ablkcipher_request*) ; 
 int FUNC3 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_tdes_dev*,int) ; 
 int FUNC5 (struct atmel_tdes_dev*) ; 
 struct atmel_tdes_ctx* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ablkcipher_request*) ; 
 struct crypto_async_request* FUNC8 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct atmel_tdes_dev *dd,
			       struct ablkcipher_request *req)
{
	struct crypto_async_request *async_req, *backlog;
	struct atmel_tdes_ctx *ctx;
	struct atmel_tdes_reqctx *rctx;
	unsigned long flags;
	int err, ret = 0;

	FUNC10(&dd->lock, flags);
	if (req)
		ret = FUNC0(&dd->queue, req);
	if (dd->flags & TDES_FLAGS_BUSY) {
		FUNC11(&dd->lock, flags);
		return ret;
	}
	backlog = FUNC9(&dd->queue);
	async_req = FUNC8(&dd->queue);
	if (async_req)
		dd->flags |= TDES_FLAGS_BUSY;
	FUNC11(&dd->lock, flags);

	if (!async_req)
		return ret;

	if (backlog)
		backlog->complete(backlog, -EINPROGRESS);

	req = FUNC1(async_req);

	/* assign new request to device */
	dd->req = req;
	dd->total = req->nbytes;
	dd->in_offset = 0;
	dd->in_sg = req->src;
	dd->out_offset = 0;
	dd->out_sg = req->dst;

	rctx = FUNC2(req);
	ctx = FUNC6(FUNC7(req));
	rctx->mode &= TDES_FLAGS_MODE_MASK;
	dd->flags = (dd->flags & ~TDES_FLAGS_MODE_MASK) | rctx->mode;
	dd->ctx = ctx;
	ctx->dd = dd;

	err = FUNC5(dd);
	if (!err)
		err = FUNC3(dd);
	if (err) {
		/* des_task will not finish it, so do it here */
		FUNC4(dd, err);
		FUNC13(&dd->queue_task);
	}

	return ret;
}