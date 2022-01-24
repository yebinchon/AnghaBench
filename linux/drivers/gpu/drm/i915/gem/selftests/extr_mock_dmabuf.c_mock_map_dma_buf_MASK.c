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
struct sg_table {int /*<<< orphan*/  nents; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct mock_dmabuf {int npages; int /*<<< orphan*/ * pages; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dev; int /*<<< orphan*/  dmabuf; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int ENOMEM ; 
 struct sg_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 
 struct sg_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sg_table*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_table*) ; 
 struct scatterlist* FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mock_dmabuf* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sg_table *FUNC9(struct dma_buf_attachment *attachment,
					 enum dma_data_direction dir)
{
	struct mock_dmabuf *mock = FUNC8(attachment->dmabuf);
	struct sg_table *st;
	struct scatterlist *sg;
	int i, err;

	st = FUNC3(sizeof(*st), GFP_KERNEL);
	if (!st)
		return FUNC0(-ENOMEM);

	err = FUNC4(st, mock->npages, GFP_KERNEL);
	if (err)
		goto err_free;

	sg = st->sgl;
	for (i = 0; i < mock->npages; i++) {
		FUNC7(sg, mock->pages[i], PAGE_SIZE, 0);
		sg = FUNC6(sg);
	}

	if (!FUNC1(attachment->dev, st->sgl, st->nents, dir)) {
		err = -ENOMEM;
		goto err_st;
	}

	return st;

err_st:
	FUNC5(st);
err_free:
	FUNC2(st);
	return FUNC0(err);
}