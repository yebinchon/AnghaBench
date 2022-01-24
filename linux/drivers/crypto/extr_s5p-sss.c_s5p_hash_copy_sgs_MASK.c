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
struct s5p_hash_reqctx {unsigned int bufcnt; int error; int sg_len; TYPE_1__* dd; int /*<<< orphan*/  skip; int /*<<< orphan*/  sgl; int /*<<< orphan*/  sg; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  xmit_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HASH_FLAGS_SGS_COPIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct scatterlist*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct s5p_hash_reqctx *ctx,
			     struct scatterlist *sg, unsigned int new_len)
{
	unsigned int pages, len;
	void *buf;

	len = new_len + ctx->bufcnt;
	pages = FUNC2(len);

	buf = (void *)FUNC0(GFP_ATOMIC, pages);
	if (!buf) {
		FUNC1(ctx->dd->dev, "alloc pages for unaligned case.\n");
		ctx->error = true;
		return -ENOMEM;
	}

	if (ctx->bufcnt)
		FUNC3(buf, ctx->dd->xmit_buf, ctx->bufcnt);

	FUNC4(buf + ctx->bufcnt, sg, ctx->skip,
				 new_len, 0);
	FUNC6(ctx->sgl, 1);
	FUNC7(ctx->sgl, buf, len);
	ctx->sg = ctx->sgl;
	ctx->sg_len = 1;
	ctx->bufcnt = 0;
	ctx->skip = 0;
	FUNC5(HASH_FLAGS_SGS_COPIED, &ctx->dd->hash_flags);

	return 0;
}