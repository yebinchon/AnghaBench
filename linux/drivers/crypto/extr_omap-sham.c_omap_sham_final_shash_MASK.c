#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_sham_reqctx {scalar_t__ bufcnt; scalar_t__ buffer; TYPE_1__* dd; int /*<<< orphan*/  flags; } ;
struct omap_sham_ctx {int /*<<< orphan*/  fallback; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;
struct ahash_request {int /*<<< orphan*/  result; TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAGS_AUTO_XOR ; 
 int /*<<< orphan*/  FLAGS_HMAC ; 
 struct omap_sham_reqctx* FUNC0 (struct ahash_request*) ; 
 struct omap_sham_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct omap_sham_reqctx*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req)
{
	struct omap_sham_ctx *tctx = FUNC1(req->base.tfm);
	struct omap_sham_reqctx *ctx = FUNC0(req);
	int offset = 0;

	/*
	 * If we are running HMAC on limited hardware support, skip
	 * the ipad in the beginning of the buffer if we are going for
	 * software fallback algorithm.
	 */
	if (FUNC4(FLAGS_HMAC, &ctx->flags) &&
	    !FUNC4(FLAGS_AUTO_XOR, &ctx->dd->flags))
		offset = FUNC2(ctx);

	return FUNC3(tctx->fallback, req->base.flags,
				      ctx->buffer + offset,
				      ctx->bufcnt - offset, req->result);
}