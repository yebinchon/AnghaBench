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
struct scatterlist {int length; int offset; } ;
struct omap_sham_reqctx {int offset; int sg_len; struct scatterlist* sg; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ ZONE_DMA ; 
 int FUNC2 (struct omap_sham_reqctx*,struct scatterlist*,int,int) ; 
 int FUNC3 (struct omap_sham_reqctx*,struct scatterlist*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC7(struct scatterlist *sg,
			       int nbytes, int bs, bool final,
			       struct omap_sham_reqctx *rctx)
{
	int n = 0;
	bool aligned = true;
	bool list_ok = true;
	struct scatterlist *sg_tmp = sg;
	int new_len;
	int offset = rctx->offset;

	if (!sg || !sg->length || !nbytes)
		return 0;

	new_len = nbytes;

	if (offset)
		list_ok = false;

	if (final)
		new_len = FUNC0(new_len, bs) * bs;
	else
		new_len = (new_len - 1) / bs * bs;

	if (nbytes != new_len)
		list_ok = false;

	while (nbytes > 0 && sg_tmp) {
		n++;

#ifdef CONFIG_ZONE_DMA
		if (page_zonenum(sg_page(sg_tmp)) != ZONE_DMA) {
			aligned = false;
			break;
		}
#endif

		if (offset < sg_tmp->length) {
			if (!FUNC1(offset + sg_tmp->offset, 4)) {
				aligned = false;
				break;
			}

			if (!FUNC1(sg_tmp->length - offset, bs)) {
				aligned = false;
				break;
			}
		}

		if (offset) {
			offset -= sg_tmp->length;
			if (offset < 0) {
				nbytes += offset;
				offset = 0;
			}
		} else {
			nbytes -= sg_tmp->length;
		}

		sg_tmp = FUNC5(sg_tmp);

		if (nbytes < 0) {
			list_ok = false;
			break;
		}
	}

	if (!aligned)
		return FUNC3(rctx, sg, bs, new_len);
	else if (!list_ok)
		return FUNC2(rctx, sg, bs, new_len);

	rctx->sg_len = n;
	rctx->sg = sg;

	return 0;
}