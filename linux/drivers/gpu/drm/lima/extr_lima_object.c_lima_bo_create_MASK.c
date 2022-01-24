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
typedef  int /*<<< orphan*/  u32 ;
struct sg_table {int dummy; } ;
struct lima_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {size_t size; TYPE_1__* filp; } ;
struct lima_bo {int /*<<< orphan*/ * pages_dma_addr; struct lima_bo* pages; TYPE_2__ gem; struct sg_table* sgt; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EFAULT ; 
 int ENOMEM ; 
 struct lima_bo* FUNC0 (struct lima_bo*) ; 
 struct lima_bo* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_DMA32 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct lima_bo*) ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lima_bo,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lima_bo* FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct sg_table*,struct lima_bo*,int /*<<< orphan*/ *,size_t) ; 
 void* FUNC7 (size_t,int,int /*<<< orphan*/ ) ; 
 struct lima_bo* FUNC8 (struct lima_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct lima_bo*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct lima_bo *FUNC11(struct lima_device *dev, u32 size,
			       u32 flags, struct sg_table *sgt)
{
	int i, err;
	size_t npages;
	struct lima_bo *bo, *ret;

	bo = FUNC8(dev, size, flags);
	if (FUNC2(bo))
		return bo;

	npages = bo->gem.size >> PAGE_SHIFT;

	bo->pages_dma_addr = FUNC7(npages, sizeof(dma_addr_t), GFP_KERNEL);
	if (!bo->pages_dma_addr) {
		ret = FUNC1(-ENOMEM);
		goto err_out;
	}

	if (sgt) {
		bo->sgt = sgt;

		bo->pages = FUNC7(npages, sizeof(*bo->pages), GFP_KERNEL);
		if (!bo->pages) {
			ret = FUNC1(-ENOMEM);
			goto err_out;
		}

		err = FUNC6(
			sgt, bo->pages, bo->pages_dma_addr, npages);
		if (err) {
			ret = FUNC1(err);
			goto err_out;
		}
	} else {
		FUNC10(bo->gem.filp->f_mapping, GFP_DMA32);
		bo->pages = FUNC5(&bo->gem);
		if (FUNC2(bo->pages)) {
			ret = FUNC0(bo->pages);
			bo->pages = NULL;
			goto err_out;
		}

		for (i = 0; i < npages; i++) {
			dma_addr_t addr = FUNC3(dev->dev, bo->pages[i], 0,
						       PAGE_SIZE, DMA_BIDIRECTIONAL);
			if (FUNC4(dev->dev, addr)) {
				ret = FUNC1(-EFAULT);
				goto err_out;
			}
			bo->pages_dma_addr[i] = addr;
		}

	}

	return bo;

err_out:
	FUNC9(bo);
	return ret;
}