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
struct atmel_sha_reqctx {scalar_t__ total; int flags; scalar_t__ bufcnt; scalar_t__ buflen; scalar_t__ offset; int /*<<< orphan*/  sg; } ;
struct ahash_request {scalar_t__ nbytes; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ ATMEL_SHA_DMA_THRESHOLD ; 
 int SHA_FLAGS_CPU ; 
 int SHA_FLAGS_FINUP ; 
 int /*<<< orphan*/  SHA_OP_UPDATE ; 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_sha_reqctx*) ; 
 int FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct atmel_sha_reqctx *ctx = FUNC0(req);

	if (!req->nbytes)
		return 0;

	ctx->total = req->nbytes;
	ctx->sg = req->src;
	ctx->offset = 0;

	if (ctx->flags & SHA_FLAGS_FINUP) {
		if (ctx->bufcnt + ctx->total < ATMEL_SHA_DMA_THRESHOLD)
			/* faster to use CPU for short transfers */
			ctx->flags |= SHA_FLAGS_CPU;
	} else if (ctx->bufcnt + ctx->total < ctx->buflen) {
		FUNC1(ctx);
		return 0;
	}
	return FUNC2(req, SHA_OP_UPDATE);
}