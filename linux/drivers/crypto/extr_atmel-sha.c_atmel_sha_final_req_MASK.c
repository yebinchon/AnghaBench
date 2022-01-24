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
struct atmel_sha_reqctx {int bufcnt; int /*<<< orphan*/  buffer; } ;
struct atmel_sha_dev {int /*<<< orphan*/  dev; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int ATMEL_SHA_DMA_THRESHOLD ; 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_sha_reqctx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct atmel_sha_dev*,struct atmel_sha_reqctx*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct atmel_sha_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct atmel_sha_reqctx *ctx = FUNC0(req);
	int err = 0;
	int count;

	if (ctx->bufcnt >= ATMEL_SHA_DMA_THRESHOLD) {
		FUNC1(ctx, 0);
		count = ctx->bufcnt;
		ctx->bufcnt = 0;
		err = FUNC3(dd, ctx, count, 1);
	}
	/* faster to handle last block with cpu */
	else {
		FUNC1(ctx, 0);
		count = ctx->bufcnt;
		ctx->bufcnt = 0;
		err = FUNC2(dd, ctx->buffer, count, 1);
	}

	FUNC4(dd->dev, "final_req: err: %d\n", err);

	return err;
}