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
struct s5p_hash_reqctx {int finup; int /*<<< orphan*/  total; int /*<<< orphan*/  error; scalar_t__ op_update; scalar_t__ digcnt; } ;
struct s5p_aes_dev {int /*<<< orphan*/  dev; struct ahash_request* hash_req; int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  hash_queue; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;} ;
struct ahash_request {int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  HASH_FLAGS_BUSY ; 
 int /*<<< orphan*/  SSS_HASHIN_INDEPENDENT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 struct ahash_request* FUNC1 (struct crypto_async_request*) ; 
 struct s5p_hash_reqctx* FUNC2 (struct ahash_request*) ; 
 struct crypto_async_request* FUNC3 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_request*,int) ; 
 int FUNC8 (struct ahash_request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ahash_request*) ; 
 int FUNC10 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct crypto_async_request*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct s5p_aes_dev *dd,
				 struct ahash_request *req)
{
	struct crypto_async_request *async_req, *backlog;
	struct s5p_hash_reqctx *ctx;
	unsigned long flags;
	int err = 0, ret = 0;

retry:
	FUNC12(&dd->hash_lock, flags);
	if (req)
		ret = FUNC0(&dd->hash_queue, req);

	if (FUNC15(HASH_FLAGS_BUSY, &dd->hash_flags)) {
		FUNC13(&dd->hash_lock, flags);
		return ret;
	}

	backlog = FUNC4(&dd->hash_queue);
	async_req = FUNC3(&dd->hash_queue);
	if (async_req)
		FUNC11(HASH_FLAGS_BUSY, &dd->hash_flags);

	FUNC13(&dd->hash_lock, flags);

	if (!async_req)
		return ret;

	if (backlog)
		backlog->complete(backlog, -EINPROGRESS);

	req = FUNC1(async_req);
	dd->hash_req = req;
	ctx = FUNC2(req);

	err = FUNC8(req, ctx->op_update);
	if (err || !ctx->total)
		goto out;

	FUNC5(dd->dev, "handling new req, op_update: %u, nbytes: %d\n",
		ctx->op_update, req->nbytes);

	FUNC6(dd, SSS_HASHIN_INDEPENDENT);
	if (ctx->digcnt)
		FUNC9(req); /* restore hash IV */

	if (ctx->op_update) { /* HASH_OP_UPDATE */
		err = FUNC10(dd, ctx->total, ctx->finup);
		if (err != -EINPROGRESS && ctx->finup && !ctx->error)
			/* no final() after finup() */
			err = FUNC10(dd, ctx->total, true);
	} else { /* HASH_OP_FINAL */
		err = FUNC10(dd, ctx->total, true);
	}
out:
	if (err != -EINPROGRESS) {
		/* hash_tasklet_cb will not finish it, so do it here */
		FUNC7(req, err);
		req = NULL;

		/*
		 * Execute next request immediately if there is anything
		 * in queue.
		 */
		goto retry;
	}

	return ret;
}