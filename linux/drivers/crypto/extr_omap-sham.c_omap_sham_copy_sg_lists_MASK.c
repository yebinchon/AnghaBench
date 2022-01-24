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
struct scatterlist {int length; int /*<<< orphan*/  offset; } ;
struct omap_sham_reqctx {int offset; int /*<<< orphan*/  bufcnt; TYPE_1__* dd; scalar_t__ sg_len; struct scatterlist* sg; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  xmit_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FLAGS_SGS_ALLOCED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct scatterlist* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct scatterlist*) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct omap_sham_reqctx *ctx,
				   struct scatterlist *sg, int bs, int new_len)
{
	int n = FUNC4(sg);
	struct scatterlist *tmp;
	int offset = ctx->offset;

	if (ctx->bufcnt)
		n++;

	ctx->sg = FUNC0(n, sizeof(*sg), GFP_KERNEL);
	if (!ctx->sg)
		return -ENOMEM;

	FUNC2(ctx->sg, n);

	tmp = ctx->sg;

	ctx->sg_len = 0;

	if (ctx->bufcnt) {
		FUNC7(tmp, ctx->dd->xmit_buf, ctx->bufcnt);
		tmp = FUNC5(tmp);
		ctx->sg_len++;
	}

	while (sg && new_len) {
		int len = sg->length - offset;

		if (offset) {
			offset -= sg->length;
			if (offset < 0)
				offset = 0;
		}

		if (new_len < len)
			len = new_len;

		if (len > 0) {
			new_len -= len;
			FUNC8(tmp, FUNC6(sg), len, sg->offset);
			if (new_len <= 0)
				FUNC3(tmp);
			tmp = FUNC5(tmp);
			ctx->sg_len++;
		}

		sg = FUNC5(sg);
	}

	FUNC1(FLAGS_SGS_ALLOCED, &ctx->dd->flags);

	ctx->bufcnt = 0;

	return 0;
}