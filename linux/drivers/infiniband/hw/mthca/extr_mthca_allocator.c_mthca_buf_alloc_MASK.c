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
struct TYPE_4__ {int /*<<< orphan*/ * buf; } ;
union mthca_buf {TYPE_2__* page_list; TYPE_2__ direct; } ;
typedef  int u64 ;
struct mthca_pd {int /*<<< orphan*/  pd_num; } ;
struct mthca_mr {int dummy; } ;
struct mthca_dev {TYPE_1__* pdev; } ;
typedef  int dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MTHCA_MPT_FLAG_LOCAL_READ ; 
 int MTHCA_MPT_FLAG_LOCAL_WRITE ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,int,union mthca_buf*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mthca_dev*,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ,int,int,struct mthca_mr*) ; 

int FUNC8(struct mthca_dev *dev, int size, int max_direct,
		    union mthca_buf *buf, int *is_direct, struct mthca_pd *pd,
		    int hca_write, struct mthca_mr *mr)
{
	int err = -ENOMEM;
	int npages, shift;
	u64 *dma_list = NULL;
	dma_addr_t t;
	int i;

	if (size <= max_direct) {
		*is_direct = 1;
		npages     = 1;
		shift      = FUNC3(size) + PAGE_SHIFT;

		buf->direct.buf = FUNC1(&dev->pdev->dev,
						     size, &t, GFP_KERNEL);
		if (!buf->direct.buf)
			return -ENOMEM;

		FUNC2(&buf->direct, mapping, t);

		while (t & ((1 << shift) - 1)) {
			--shift;
			npages *= 2;
		}

		dma_list = FUNC5(npages, sizeof(*dma_list),
					 GFP_KERNEL);
		if (!dma_list)
			goto err_free;

		for (i = 0; i < npages; ++i)
			dma_list[i] = t + i * (1 << shift);
	} else {
		*is_direct = 0;
		npages     = (size + PAGE_SIZE - 1) / PAGE_SIZE;
		shift      = PAGE_SHIFT;

		dma_list = FUNC5(npages, sizeof(*dma_list),
					 GFP_KERNEL);
		if (!dma_list)
			return -ENOMEM;

		buf->page_list = FUNC5(npages,
					       sizeof(*buf->page_list),
					       GFP_KERNEL);
		if (!buf->page_list)
			goto err_out;

		for (i = 0; i < npages; ++i)
			buf->page_list[i].buf = NULL;

		for (i = 0; i < npages; ++i) {
			buf->page_list[i].buf =
				FUNC1(&dev->pdev->dev, PAGE_SIZE,
						   &t, GFP_KERNEL);
			if (!buf->page_list[i].buf)
				goto err_free;

			dma_list[i] = t;
			FUNC2(&buf->page_list[i], mapping, t);

			FUNC0(buf->page_list[i].buf);
		}
	}

	err = FUNC7(dev, pd->pd_num,
				  dma_list, shift, npages,
				  0, size,
				  MTHCA_MPT_FLAG_LOCAL_READ |
				  (hca_write ? MTHCA_MPT_FLAG_LOCAL_WRITE : 0),
				  mr);
	if (err)
		goto err_free;

	FUNC4(dma_list);

	return 0;

err_free:
	FUNC6(dev, size, buf, *is_direct, NULL);

err_out:
	FUNC4(dma_list);

	return err;
}