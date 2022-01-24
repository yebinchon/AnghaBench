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
struct omap_sham_reqctx {int flags; scalar_t__ total; int /*<<< orphan*/  digcnt; } ;
struct omap_sham_dev {scalar_t__ fallback_sz; int /*<<< orphan*/  dev; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAGS_CPU ; 
 int /*<<< orphan*/  FLAGS_FINUP ; 
 struct omap_sham_reqctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (struct omap_sham_reqctx*) ; 
 int FUNC4 (struct omap_sham_dev*,scalar_t__,int) ; 
 int FUNC5 (struct omap_sham_dev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct omap_sham_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct omap_sham_reqctx *ctx = FUNC1(req);
	int err;
	bool final = ctx->flags & FUNC0(FLAGS_FINUP);

	FUNC2(dd->dev, "update_req: total: %u, digcnt: %d, finup: %d\n",
		 ctx->total, ctx->digcnt, (ctx->flags & FUNC0(FLAGS_FINUP)) != 0);

	if (ctx->total < FUNC3(ctx) ||
	    ctx->total < dd->fallback_sz)
		ctx->flags |= FUNC0(FLAGS_CPU);

	if (ctx->flags & FUNC0(FLAGS_CPU))
		err = FUNC4(dd, ctx->total, final);
	else
		err = FUNC5(dd, ctx->total, final);

	/* wait for dma completion before can take more data */
	FUNC2(dd->dev, "update: err: %d, digcnt: %d\n", err, ctx->digcnt);

	return err;
}