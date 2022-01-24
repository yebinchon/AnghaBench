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
struct dcp_sha_req_ctx {int fini; int init; } ;
struct dcp_async_ctx {int hot; size_t chan; int /*<<< orphan*/  mutex; } ;
struct dcp {int /*<<< orphan*/ * thread; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * queue; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  base; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 struct dcp_sha_req_ctx* FUNC0 (struct ahash_request*) ; 
 struct dcp_async_ctx* FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dcp* global_sdcp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ahash_request *req, int fini)
{
	struct dcp *sdcp = global_sdcp;

	struct dcp_sha_req_ctx *rctx = FUNC0(req);
	struct crypto_ahash *tfm = FUNC2(req);
	struct dcp_async_ctx *actx = FUNC1(tfm);

	int ret;

	/*
	 * Ignore requests that have no data in them and are not
	 * the trailing requests in the stream of requests.
	 */
	if (!req->nbytes && !fini)
		return 0;

	FUNC4(&actx->mutex);

	rctx->fini = fini;

	if (!actx->hot) {
		actx->hot = 1;
		rctx->init = 1;
	}

	FUNC6(&sdcp->lock[actx->chan]);
	ret = FUNC3(&sdcp->queue[actx->chan], &req->base);
	FUNC7(&sdcp->lock[actx->chan]);

	FUNC8(sdcp->thread[actx->chan]);
	FUNC5(&actx->mutex);

	return ret;
}