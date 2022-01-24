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
struct omap_sham_reqctx {scalar_t__ total; scalar_t__ bufcnt; } ;
struct omap_sham_dev {int /*<<< orphan*/  dev; scalar_t__ polling_mode; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct omap_sham_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (struct omap_sham_reqctx*) ; 
 int FUNC3 (struct omap_sham_dev*,scalar_t__,int) ; 
 int FUNC4 (struct omap_sham_dev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct omap_sham_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct omap_sham_reqctx *ctx = FUNC0(req);
	int err = 0, use_dma = 1;

	if ((ctx->total <= FUNC2(ctx)) || dd->polling_mode)
		/*
		 * faster to handle last block with cpu or
		 * use cpu when dma is not present.
		 */
		use_dma = 0;

	if (use_dma)
		err = FUNC4(dd, ctx->total, 1);
	else
		err = FUNC3(dd, ctx->total, 1);

	ctx->bufcnt = 0;

	FUNC1(dd->dev, "final_req: err: %d\n", err);

	return err;
}