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
typedef  size_t u8 ;
struct mtk_sha_reqctx {scalar_t__ op; int flags; } ;
struct mtk_sha_rec {int flags; struct ahash_request* req; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct mtk_cryp {struct mtk_sha_rec** sha; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;} ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int SHA_FLAGS_BUSY ; 
 int SHA_FLAGS_FINUP ; 
 scalar_t__ SHA_OP_FINAL ; 
 scalar_t__ SHA_OP_UPDATE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 struct ahash_request* FUNC1 (struct crypto_async_request*) ; 
 struct mtk_sha_reqctx* FUNC2 (struct ahash_request*) ; 
 struct crypto_async_request* FUNC3 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mtk_cryp*,struct mtk_sha_rec*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_cryp*,struct mtk_sha_rec*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_sha_reqctx*) ; 
 int FUNC8 (struct mtk_cryp*,struct mtk_sha_rec*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct crypto_async_request*,int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct mtk_cryp *cryp, u8 id,
				struct ahash_request *req)
{
	struct mtk_sha_rec *sha = cryp->sha[id];
	struct crypto_async_request *async_req, *backlog;
	struct mtk_sha_reqctx *ctx;
	unsigned long flags;
	int err = 0, ret = 0;

	FUNC9(&sha->lock, flags);
	if (req)
		ret = FUNC0(&sha->queue, req);

	if (SHA_FLAGS_BUSY & sha->flags) {
		FUNC10(&sha->lock, flags);
		return ret;
	}

	backlog = FUNC4(&sha->queue);
	async_req = FUNC3(&sha->queue);
	if (async_req)
		sha->flags |= SHA_FLAGS_BUSY;
	FUNC10(&sha->lock, flags);

	if (!async_req)
		return ret;

	if (backlog)
		backlog->complete(backlog, -EINPROGRESS);

	req = FUNC1(async_req);
	ctx = FUNC2(req);

	sha->req = req;

	FUNC7(ctx);

	if (ctx->op == SHA_OP_UPDATE) {
		err = FUNC8(cryp, sha);
		if (err != -EINPROGRESS && (ctx->flags & SHA_FLAGS_FINUP))
			/* No final() after finup() */
			err = FUNC5(cryp, sha);
	} else if (ctx->op == SHA_OP_FINAL) {
		err = FUNC5(cryp, sha);
	}

	if (FUNC12(err != -EINPROGRESS))
		/* Task will not finish it, so do it here */
		FUNC6(cryp, sha, err);

	return ret;
}