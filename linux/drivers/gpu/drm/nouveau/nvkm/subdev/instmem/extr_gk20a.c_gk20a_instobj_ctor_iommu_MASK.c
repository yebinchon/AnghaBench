#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct page {int dummy; } ;
struct nvkm_subdev {TYPE_2__* device; } ;
struct nvkm_mm_node {int offset; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ptrs; } ;
struct gk20a_instobj {struct nvkm_mm_node* mn; TYPE_3__ memory; } ;
struct gk20a_instobj_iommu {struct page** pages; scalar_t__* dma_addrs; struct gk20a_instobj base; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct gk20a_instmem {int iommu_pgshift; int /*<<< orphan*/  mm_mutex; int /*<<< orphan*/  mm; scalar_t__ iommu_bit; int /*<<< orphan*/  domain; TYPE_1__ base; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_5__ {struct device* dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,struct page*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gk20a_instobj_func_iommu ; 
 int /*<<< orphan*/  gk20a_instobj_ptrs ; 
 int FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct gk20a_instobj_iommu* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct nvkm_mm_node**) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,struct nvkm_mm_node**) ; 

__attribute__((used)) static int
FUNC15(struct gk20a_instmem *imem, u32 npages, u32 align,
			 struct gk20a_instobj **_node)
{
	struct gk20a_instobj_iommu *node;
	struct nvkm_subdev *subdev = &imem->base.subdev;
	struct device *dev = subdev->device->dev;
	struct nvkm_mm_node *r;
	int ret;
	int i;

	/*
	 * despite their variable size, instmem allocations are small enough
	 * (< 1 page) to be handled by kzalloc
	 */
	if (!(node = FUNC8(sizeof(*node) + ((sizeof(node->pages[0]) +
			     sizeof(*node->dma_addrs)) * npages), GFP_KERNEL)))
		return -ENOMEM;
	*_node = &node->base;
	node->dma_addrs = (void *)(node->pages + npages);

	FUNC12(&gk20a_instobj_func_iommu, &node->base.memory);
	node->base.memory.ptrs = &gk20a_instobj_ptrs;

	/* Allocate backing memory */
	for (i = 0; i < npages; i++) {
		struct page *p = FUNC2(GFP_KERNEL);
		dma_addr_t dma_adr;

		if (p == NULL) {
			ret = -ENOMEM;
			goto free_pages;
		}
		node->pages[i] = p;
		dma_adr = FUNC3(dev, p, 0, PAGE_SIZE, DMA_BIDIRECTIONAL);
		if (FUNC4(dev, dma_adr)) {
			FUNC11(subdev, "DMA mapping error!\n");
			ret = -ENOMEM;
			goto free_pages;
		}
		node->dma_addrs[i] = dma_adr;
	}

	FUNC9(imem->mm_mutex);
	/* Reserve area from GPU address space */
	ret = FUNC14(imem->mm, 0, 1, npages, npages,
			   align >> imem->iommu_pgshift, &r);
	FUNC10(imem->mm_mutex);
	if (ret) {
		FUNC11(subdev, "IOMMU space is full!\n");
		goto free_pages;
	}

	/* Map into GPU address space */
	for (i = 0; i < npages; i++) {
		u32 offset = (r->offset + i) << imem->iommu_pgshift;

		ret = FUNC6(imem->domain, offset, node->dma_addrs[i],
				PAGE_SIZE, IOMMU_READ | IOMMU_WRITE);
		if (ret < 0) {
			FUNC11(subdev, "IOMMU mapping failure: %d\n", ret);

			while (i-- > 0) {
				offset -= PAGE_SIZE;
				FUNC7(imem->domain, offset, PAGE_SIZE);
			}
			goto release_area;
		}
	}

	/* IOMMU bit tells that an address is to be resolved through the IOMMU */
	r->offset |= FUNC0(imem->iommu_bit - imem->iommu_pgshift);

	node->base.mn = r;
	return 0;

release_area:
	FUNC9(imem->mm_mutex);
	FUNC13(imem->mm, &r);
	FUNC10(imem->mm_mutex);

free_pages:
	for (i = 0; i < npages && node->pages[i] != NULL; i++) {
		dma_addr_t dma_addr = node->dma_addrs[i];
		if (dma_addr)
			FUNC5(dev, dma_addr, PAGE_SIZE,
				       DMA_BIDIRECTIONAL);
		FUNC1(node->pages[i]);
	}

	return ret;
}