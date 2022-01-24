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
struct udmabuf {int pagecount; int /*<<< orphan*/  pages; } ;
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dev; TYPE_1__* dmabuf; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct udmabuf* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct sg_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 
 struct sg_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sg_table*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_table*) ; 

__attribute__((used)) static struct sg_table *FUNC6(struct dma_buf_attachment *at,
				    enum dma_data_direction direction)
{
	struct udmabuf *ubuf = at->dmabuf->priv;
	struct sg_table *sg;
	int ret;

	sg = FUNC3(sizeof(*sg), GFP_KERNEL);
	if (!sg)
		return FUNC0(-ENOMEM);
	ret = FUNC4(sg, ubuf->pages, ubuf->pagecount,
					0, ubuf->pagecount << PAGE_SHIFT,
					GFP_KERNEL);
	if (ret < 0)
		goto err;
	if (!FUNC1(at->dev, sg->sgl, sg->nents, direction)) {
		ret = -EINVAL;
		goto err;
	}
	return sg;

err:
	FUNC5(sg);
	FUNC2(sg);
	return FUNC0(ret);
}