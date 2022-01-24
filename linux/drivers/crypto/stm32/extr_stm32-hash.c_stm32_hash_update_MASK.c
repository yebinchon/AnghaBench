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
struct stm32_hash_request_ctx {int flags; scalar_t__ total; scalar_t__ bufcnt; scalar_t__ buflen; scalar_t__ offset; int /*<<< orphan*/  sg; } ;
struct ahash_request {scalar_t__ nbytes; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int HASH_FLAGS_CPU ; 
 int /*<<< orphan*/  HASH_OP_UPDATE ; 
 struct stm32_hash_request_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_hash_request_ctx*) ; 
 int FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct stm32_hash_request_ctx *rctx = FUNC0(req);

	if (!req->nbytes || !(rctx->flags & HASH_FLAGS_CPU))
		return 0;

	rctx->total = req->nbytes;
	rctx->sg = req->src;
	rctx->offset = 0;

	if ((rctx->bufcnt + rctx->total < rctx->buflen)) {
		FUNC1(rctx);
		return 0;
	}

	return FUNC2(req, HASH_OP_UPDATE);
}