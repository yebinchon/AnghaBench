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
struct scatterlist {int dummy; } ;
struct omap_sham_reqctx {int bufcnt; int sg_len; int /*<<< orphan*/  offset; TYPE_1__* dd; int /*<<< orphan*/  sgl; int /*<<< orphan*/  sg; scalar_t__ total; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  xmit_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FLAGS_SGS_COPIED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct scatterlist*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC8(struct omap_sham_reqctx *ctx,
			      struct scatterlist *sg, int bs, int new_len)
{
	int pages;
	void *buf;
	int len;

	len = new_len + ctx->bufcnt;

	pages = FUNC1(ctx->total);

	buf = (void *)FUNC0(GFP_ATOMIC, pages);
	if (!buf) {
		FUNC3("Couldn't allocate pages for unaligned cases.\n");
		return -ENOMEM;
	}

	if (ctx->bufcnt)
		FUNC2(buf, ctx->dd->xmit_buf, ctx->bufcnt);

	FUNC4(buf + ctx->bufcnt, sg, ctx->offset,
				 ctx->total - ctx->bufcnt, 0);
	FUNC6(ctx->sgl, 1);
	FUNC7(ctx->sgl, buf, len);
	ctx->sg = ctx->sgl;
	FUNC5(FLAGS_SGS_COPIED, &ctx->dd->flags);
	ctx->sg_len = 1;
	ctx->bufcnt = 0;
	ctx->offset = 0;

	return 0;
}