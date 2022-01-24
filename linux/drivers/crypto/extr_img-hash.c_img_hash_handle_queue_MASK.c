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
struct img_hash_request_ctx {int /*<<< orphan*/  op; } ;
struct img_hash_dev {int flags; int /*<<< orphan*/  dev; struct ahash_request* req; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;} ;
struct ahash_request {int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int DRIVER_FLAGS_BUSY ; 
 int EINPROGRESS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 struct ahash_request* FUNC1 (struct crypto_async_request*) ; 
 struct img_hash_request_ctx* FUNC2 (struct ahash_request*) ; 
 struct crypto_async_request* FUNC3 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahash_request*,int) ; 
 int FUNC7 (struct img_hash_dev*) ; 
 int FUNC8 (struct img_hash_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct crypto_async_request*,int) ; 

__attribute__((used)) static int FUNC12(struct img_hash_dev *hdev,
				 struct ahash_request *req)
{
	struct crypto_async_request *async_req, *backlog;
	struct img_hash_request_ctx *ctx;
	unsigned long flags;
	int err = 0, res = 0;

	FUNC9(&hdev->lock, flags);

	if (req)
		res = FUNC0(&hdev->queue, req);

	if (DRIVER_FLAGS_BUSY & hdev->flags) {
		FUNC10(&hdev->lock, flags);
		return res;
	}

	backlog = FUNC4(&hdev->queue);
	async_req = FUNC3(&hdev->queue);
	if (async_req)
		hdev->flags |= DRIVER_FLAGS_BUSY;

	FUNC10(&hdev->lock, flags);

	if (!async_req)
		return res;

	if (backlog)
		backlog->complete(backlog, -EINPROGRESS);

	req = FUNC1(async_req);
	hdev->req = req;

	ctx = FUNC2(req);

	FUNC5(hdev->dev, "processing req, op: %lu, bytes: %d\n",
		 ctx->op, req->nbytes);

	err = FUNC7(hdev);

	if (!err)
		err = FUNC8(hdev);

	if (err != -EINPROGRESS) {
		/* done_task will not finish so do it here */
		FUNC6(req, err);
	}
	return res;
}