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
struct crypto_async_request {int /*<<< orphan*/  tfm; int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;} ;
struct atmel_sha_dev {int flags; int is_async; int force_complete; struct ahash_request* req; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct atmel_sha_ctx {int (* start ) (struct atmel_sha_dev*) ;} ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int SHA_FLAGS_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 struct ahash_request* FUNC1 (struct crypto_async_request*) ; 
 struct crypto_async_request* FUNC2 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC3 (int /*<<< orphan*/ *) ; 
 struct atmel_sha_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct atmel_sha_dev*) ; 

__attribute__((used)) static int FUNC9(struct atmel_sha_dev *dd,
				  struct ahash_request *req)
{
	struct crypto_async_request *async_req, *backlog;
	struct atmel_sha_ctx *ctx;
	unsigned long flags;
	bool start_async;
	int err = 0, ret = 0;

	FUNC5(&dd->lock, flags);
	if (req)
		ret = FUNC0(&dd->queue, req);

	if (SHA_FLAGS_BUSY & dd->flags) {
		FUNC6(&dd->lock, flags);
		return ret;
	}

	backlog = FUNC3(&dd->queue);
	async_req = FUNC2(&dd->queue);
	if (async_req)
		dd->flags |= SHA_FLAGS_BUSY;

	FUNC6(&dd->lock, flags);

	if (!async_req)
		return ret;

	if (backlog)
		backlog->complete(backlog, -EINPROGRESS);

	ctx = FUNC4(async_req->tfm);

	dd->req = FUNC1(async_req);
	start_async = (dd->req != req);
	dd->is_async = start_async;
	dd->force_complete = false;

	/* WARNING: ctx->start() MAY change dd->is_async. */
	err = ctx->start(dd);
	return (start_async) ? ret : err;
}