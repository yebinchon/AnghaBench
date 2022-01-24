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
struct mtk_sha_reqctx {scalar_t__ total; scalar_t__ bufcnt; int flags; scalar_t__ offset; int /*<<< orphan*/  sg; } ;
struct ahash_request {scalar_t__ nbytes; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ SHA_BUF_SIZE ; 
 int SHA_FLAGS_FINUP ; 
 int /*<<< orphan*/  SHA_OP_UPDATE ; 
 struct mtk_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct mtk_sha_reqctx*) ; 
 int FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct mtk_sha_reqctx *ctx = FUNC0(req);

	ctx->total = req->nbytes;
	ctx->sg = req->src;
	ctx->offset = 0;

	if ((ctx->bufcnt + ctx->total < SHA_BUF_SIZE) &&
	    !(ctx->flags & SHA_FLAGS_FINUP))
		return FUNC1(ctx);

	return FUNC2(req, SHA_OP_UPDATE);
}