#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ttm_operation_ctx {int dummy; } ;
struct TYPE_3__ {unsigned int num_pages; struct page** pages; } ;
struct ttm_dma_tt {scalar_t__* dma_address; TYPE_1__ ttm; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EFAULT ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct device*,struct page*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(struct device *dev, struct ttm_dma_tt *tt,
					struct ttm_operation_ctx *ctx)
{
	unsigned i, j;
	int r;

	r = FUNC3(&tt->ttm, ctx);
	if (r)
		return r;

	for (i = 0; i < tt->ttm.num_pages; ++i) {
		struct page *p = tt->ttm.pages[i];
		size_t num_pages = 1;

		for (j = i + 1; j < tt->ttm.num_pages; ++j) {
			if (++p != tt->ttm.pages[j])
				break;

			++num_pages;
		}

		tt->dma_address[i] = FUNC0(dev, tt->ttm.pages[i],
						  0, num_pages * PAGE_SIZE,
						  DMA_BIDIRECTIONAL);
		if (FUNC1(dev, tt->dma_address[i])) {
			while (i--) {
				FUNC2(dev, tt->dma_address[i],
					       PAGE_SIZE, DMA_BIDIRECTIONAL);
				tt->dma_address[i] = 0;
			}
			FUNC4(&tt->ttm);
			return -EFAULT;
		}

		for (j = 1; j < num_pages; ++j) {
			tt->dma_address[i + 1] = tt->dma_address[i] + PAGE_SIZE;
			++i;
		}
	}
	return 0;
}