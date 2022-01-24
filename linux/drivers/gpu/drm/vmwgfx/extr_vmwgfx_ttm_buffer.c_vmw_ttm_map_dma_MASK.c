#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct vmw_sg_table {int mode; size_t num_pages; TYPE_4__* sgt; scalar_t__ num_regions; int /*<<< orphan*/  pages; int /*<<< orphan*/  addrs; } ;
struct TYPE_9__ {size_t nents; } ;
struct TYPE_6__ {size_t num_pages; int /*<<< orphan*/  pages; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma_address; TYPE_1__ ttm; } ;
struct vmw_ttm_tt {int mapped; size_t sg_alloc_size; struct vmw_sg_table vsgt; TYPE_4__ sgt; TYPE_2__ dma_ttm; struct vmw_private* dev_priv; } ;
struct vmw_private {int map_mode; TYPE_3__* dev; } ;
struct vmw_piter {int dummy; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct ttm_mem_global {int dummy; } ;
struct sg_table {int dummy; } ;
struct scatterlist {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (struct ttm_mem_global*,size_t,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_mem_global*,size_t) ; 
 size_t FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
#define  vmw_dma_map_bind 129 
#define  vmw_dma_map_populate 128 
 struct ttm_mem_global* FUNC7 (struct vmw_private*) ; 
 scalar_t__ FUNC8 (struct vmw_piter*) ; 
 scalar_t__ FUNC9 (struct vmw_piter*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmw_piter*,struct vmw_sg_table*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vmw_ttm_tt*) ; 

__attribute__((used)) static int FUNC12(struct vmw_ttm_tt *vmw_tt)
{
	struct vmw_private *dev_priv = vmw_tt->dev_priv;
	struct ttm_mem_global *glob = FUNC7(dev_priv);
	struct vmw_sg_table *vsgt = &vmw_tt->vsgt;
	struct ttm_operation_ctx ctx = {
		.interruptible = true,
		.no_wait_gpu = false
	};
	struct vmw_piter iter;
	dma_addr_t old;
	int ret = 0;
	static size_t sgl_size;
	static size_t sgt_size;

	if (vmw_tt->mapped)
		return 0;

	vsgt->mode = dev_priv->map_mode;
	vsgt->pages = vmw_tt->dma_ttm.ttm.pages;
	vsgt->num_pages = vmw_tt->dma_ttm.ttm.num_pages;
	vsgt->addrs = vmw_tt->dma_ttm.dma_address;
	vsgt->sgt = &vmw_tt->sgt;

	switch (dev_priv->map_mode) {
	case vmw_dma_map_bind:
	case vmw_dma_map_populate:
		if (FUNC6(!sgl_size)) {
			sgl_size = FUNC5(sizeof(struct scatterlist));
			sgt_size = FUNC5(sizeof(struct sg_table));
		}
		vmw_tt->sg_alloc_size = sgt_size + sgl_size * vsgt->num_pages;
		ret = FUNC3(glob, vmw_tt->sg_alloc_size, &ctx);
		if (FUNC6(ret != 0))
			return ret;

		ret = FUNC0
			(&vmw_tt->sgt, vsgt->pages, vsgt->num_pages, 0,
			 (unsigned long) vsgt->num_pages << PAGE_SHIFT,
			 FUNC1(dev_priv->dev->dev),
			 GFP_KERNEL);
		if (FUNC6(ret != 0))
			goto out_sg_alloc_fail;

		if (vsgt->num_pages > vmw_tt->sgt.nents) {
			uint64_t over_alloc =
				sgl_size * (vsgt->num_pages -
					    vmw_tt->sgt.nents);

			FUNC4(glob, over_alloc);
			vmw_tt->sg_alloc_size -= over_alloc;
		}

		ret = FUNC11(vmw_tt);
		if (FUNC6(ret != 0))
			goto out_map_fail;

		break;
	default:
		break;
	}

	old = ~((dma_addr_t) 0);
	vmw_tt->vsgt.num_regions = 0;
	for (FUNC10(&iter, vsgt, 0); FUNC9(&iter);) {
		dma_addr_t cur = FUNC8(&iter);

		if (cur != old + PAGE_SIZE)
			vmw_tt->vsgt.num_regions++;
		old = cur;
	}

	vmw_tt->mapped = true;
	return 0;

out_map_fail:
	FUNC2(vmw_tt->vsgt.sgt);
	vmw_tt->vsgt.sgt = NULL;
out_sg_alloc_fail:
	FUNC4(glob, vmw_tt->sg_alloc_size);
	return ret;
}