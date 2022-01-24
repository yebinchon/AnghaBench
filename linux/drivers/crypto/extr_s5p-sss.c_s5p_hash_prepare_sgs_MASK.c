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
struct scatterlist {unsigned int length; } ;
struct s5p_hash_reqctx {unsigned int skip; unsigned int sg_len; struct scatterlist* sg; struct scatterlist* sgl; scalar_t__ bufcnt; TYPE_1__* dd; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct s5p_hash_reqctx*,struct scatterlist*,unsigned int) ; 
 int FUNC2 (struct s5p_hash_reqctx*,struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct s5p_hash_reqctx *ctx,
				struct scatterlist *sg,
				unsigned int new_len, bool final)
{
	unsigned int skip = ctx->skip, nbytes = new_len, n = 0;
	bool aligned = true, list_ok = true;
	struct scatterlist *sg_tmp = sg;

	if (!sg || !sg->length || !new_len)
		return 0;

	if (skip || !final)
		list_ok = false;

	while (nbytes > 0 && sg_tmp) {
		n++;
		if (skip >= sg_tmp->length) {
			skip -= sg_tmp->length;
			if (!sg_tmp->length) {
				aligned = false;
				break;
			}
		} else {
			if (!FUNC0(sg_tmp->length - skip, BUFLEN)) {
				aligned = false;
				break;
			}

			if (nbytes < sg_tmp->length - skip) {
				list_ok = false;
				break;
			}

			nbytes -= sg_tmp->length - skip;
			skip = 0;
		}

		sg_tmp = FUNC5(sg_tmp);
	}

	if (!aligned)
		return FUNC2(ctx, sg, new_len);
	else if (!list_ok)
		return FUNC1(ctx, sg, new_len);

	/*
	 * Have aligned data from previous operation and/or current
	 * Note: will enter here only if (digest or finup) and aligned
	 */
	if (ctx->bufcnt) {
		ctx->sg_len = n;
		FUNC4(ctx->sgl, 2);
		FUNC6(ctx->sgl, ctx->dd->xmit_buf, ctx->bufcnt);
		FUNC3(ctx->sgl, 2, sg);
		ctx->sg = ctx->sgl;
		ctx->sg_len++;
	} else {
		ctx->sg = sg;
		ctx->sg_len = n;
	}

	return 0;
}