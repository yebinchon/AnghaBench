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
struct scatterlist {unsigned int length; scalar_t__ offset; } ;
struct s5p_hash_reqctx {unsigned int skip; int error; TYPE_1__* dd; scalar_t__ sg_len; int /*<<< orphan*/  bufcnt; struct scatterlist* sg; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  xmit_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HASH_FLAGS_SGS_ALLOCED ; 
 struct scatterlist* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 unsigned int FUNC4 (struct scatterlist*) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct s5p_hash_reqctx *ctx,
				  struct scatterlist *sg, unsigned int new_len)
{
	unsigned int skip = ctx->skip, n = FUNC4(sg);
	struct scatterlist *tmp;
	unsigned int len;

	if (ctx->bufcnt)
		n++;

	ctx->sg = FUNC0(n, sizeof(*sg), GFP_KERNEL);
	if (!ctx->sg) {
		ctx->error = true;
		return -ENOMEM;
	}

	FUNC2(ctx->sg, n);

	tmp = ctx->sg;

	ctx->sg_len = 0;

	if (ctx->bufcnt) {
		FUNC7(tmp, ctx->dd->xmit_buf, ctx->bufcnt);
		tmp = FUNC5(tmp);
		ctx->sg_len++;
	}

	while (sg && skip >= sg->length) {
		skip -= sg->length;
		sg = FUNC5(sg);
	}

	while (sg && new_len) {
		len = sg->length - skip;
		if (new_len < len)
			len = new_len;

		new_len -= len;
		FUNC8(tmp, FUNC6(sg), len, sg->offset + skip);
		skip = 0;
		if (new_len <= 0)
			FUNC3(tmp);

		tmp = FUNC5(tmp);
		ctx->sg_len++;
		sg = FUNC5(sg);
	}

	FUNC1(HASH_FLAGS_SGS_ALLOCED, &ctx->dd->hash_flags);

	return 0;
}