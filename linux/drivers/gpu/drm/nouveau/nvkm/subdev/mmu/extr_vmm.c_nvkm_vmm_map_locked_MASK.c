#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_vmm_map {int offset; int off; int dma; int /*<<< orphan*/  tags; int /*<<< orphan*/  memory; TYPE_7__* page; scalar_t__ sgl; TYPE_1__* mem; } ;
struct nvkm_vmm {TYPE_6__* mmu; TYPE_4__* func; int /*<<< orphan*/  debug; } ;
struct nvkm_vma {scalar_t__ size; size_t page; size_t refd; int mapped; int /*<<< orphan*/  tags; int /*<<< orphan*/  memory; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  nvkm_vmm_pte_func ;
struct TYPE_15__ {TYPE_3__* desc; } ;
struct TYPE_13__ {int /*<<< orphan*/  device; } ;
struct TYPE_14__ {TYPE_5__ subdev; } ;
struct TYPE_12__ {TYPE_7__* page; } ;
struct TYPE_11__ {TYPE_2__* func; } ;
struct TYPE_10__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  sgl; int /*<<< orphan*/  mem; } ;
struct TYPE_9__ {scalar_t__ length; struct TYPE_9__* next; } ;

/* Variables and functions */
 int EINVAL ; 
 int NVKM_RAM_MM_SHIFT ; 
 size_t NVKM_VMA_PAGE_NONE ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_vmm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nvkm_vmm*,struct nvkm_vma*,void*,int /*<<< orphan*/ ,struct nvkm_vmm_map*) ; 
 int FUNC6 (struct nvkm_vmm*,struct nvkm_vma*,void*,int /*<<< orphan*/ ,struct nvkm_vmm_map*) ; 
 int FUNC7 (struct nvkm_vmm*,TYPE_7__*,int /*<<< orphan*/ ,scalar_t__,struct nvkm_vmm_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_vmm*,TYPE_7__*,int /*<<< orphan*/ ,scalar_t__,struct nvkm_vmm_map*,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct nvkm_vmm *vmm, struct nvkm_vma *vma,
		    void *argv, u32 argc, struct nvkm_vmm_map *map)
{
	nvkm_vmm_pte_func func;
	int ret;

	/* Make sure we won't overrun the end of the memory object. */
	if (FUNC11(FUNC2(map->memory) < map->offset + vma->size)) {
		FUNC0(vmm, "overrun %016llx %016llx %016llx",
			  FUNC2(map->memory),
			  map->offset, (u64)vma->size);
		return -EINVAL;
	}

	/* Check remaining arguments for validity. */
	if (vma->page == NVKM_VMA_PAGE_NONE &&
	    vma->refd == NVKM_VMA_PAGE_NONE) {
		/* Find the largest page size we can perform the mapping at. */
		const u32 debug = vmm->debug;
		vmm->debug = 0;
		ret = FUNC5(vmm, vma, argv, argc, map);
		vmm->debug = debug;
		if (ret) {
			FUNC0(vmm, "invalid at any page size");
			FUNC5(vmm, vma, argv, argc, map);
			return -EINVAL;
		}
	} else {
		/* Page size of the VMA is already pre-determined. */
		if (vma->refd != NVKM_VMA_PAGE_NONE)
			map->page = &vmm->func->page[vma->refd];
		else
			map->page = &vmm->func->page[vma->page];

		ret = FUNC6(vmm, vma, argv, argc, map);
		if (ret) {
			FUNC0(vmm, "invalid %d\n", ret);
			return ret;
		}
	}

	/* Deal with the 'offset' argument, and fetch the backend function. */
	map->off = map->offset;
	if (map->mem) {
		for (; map->off; map->mem = map->mem->next) {
			u64 size = (u64)map->mem->length << NVKM_RAM_MM_SHIFT;
			if (size > map->off)
				break;
			map->off -= size;
		}
		func = map->page->desc->func->mem;
	} else
	if (map->sgl) {
		for (; map->off; map->sgl = FUNC10(map->sgl)) {
			u64 size = FUNC9(map->sgl);
			if (size > map->off)
				break;
			map->off -= size;
		}
		func = map->page->desc->func->sgl;
	} else {
		map->dma += map->offset >> PAGE_SHIFT;
		map->off  = map->offset & PAGE_MASK;
		func = map->page->desc->func->dma;
	}

	/* Perform the map. */
	if (vma->refd == NVKM_VMA_PAGE_NONE) {
		ret = FUNC7(vmm, map->page, vma->addr, vma->size, map, func);
		if (ret)
			return ret;

		vma->refd = map->page - vmm->func->page;
	} else {
		FUNC8(vmm, map->page, vma->addr, vma->size, map, func);
	}

	FUNC3(vma->memory, vmm->mmu->subdev.device, &vma->tags);
	FUNC4(&vma->memory);
	vma->memory = FUNC1(map->memory);
	vma->mapped = true;
	vma->tags = map->tags;
	return 0;
}