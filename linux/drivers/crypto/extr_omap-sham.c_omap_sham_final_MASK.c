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
struct omap_sham_reqctx {int flags; scalar_t__ bufcnt; TYPE_1__* dd; int /*<<< orphan*/  digcnt; } ;
struct ahash_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ fallback_sz; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAGS_ERROR ; 
 int /*<<< orphan*/  FLAGS_FINUP ; 
 int /*<<< orphan*/  OP_FINAL ; 
 struct omap_sham_reqctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ahash_request*) ; 
 int FUNC4 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req)
{
	struct omap_sham_reqctx *ctx = FUNC1(req);

	ctx->flags |= FUNC0(FLAGS_FINUP);

	if (ctx->flags & FUNC0(FLAGS_ERROR))
		return 0; /* uncompleted hash is not needed */

	/*
	 * OMAP HW accel works only with buffers >= 9.
	 * HMAC is always >= 9 because ipad == block size.
	 * If buffersize is less than fallback_sz, we use fallback
	 * SW encoding, as using DMA + HW in this case doesn't provide
	 * any benefit.
	 */
	if (!ctx->digcnt && ctx->bufcnt < ctx->dd->fallback_sz)
		return FUNC3(req);
	else if (ctx->bufcnt)
		return FUNC2(req, OP_FINAL);

	/* copy ready hash (+ finalize hmac) */
	return FUNC4(req);
}