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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_vmm_map {int* pfn; } ;
struct nvkm_vmm {TYPE_3__* mmu; } ;
struct nvkm_mmu_pt {int /*<<< orphan*/  memory; } ;
struct device {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ subdev; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int NVKM_VMM_PFN_ADDR ; 
 int NVKM_VMM_PFN_ADDR_SHIFT ; 
 int NVKM_VMM_PFN_VRAM ; 
 int NVKM_VMM_PFN_W ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
		  u32 ptei, u32 ptes, struct nvkm_vmm_map *map)
{
	struct device *dev = vmm->mmu->subdev.device->dev;
	dma_addr_t addr;

	FUNC6(pt->memory);
	while (ptes--) {
		u64 data = 0;
		if (!(*map->pfn & NVKM_VMM_PFN_W))
			data |= FUNC0(6); /* RO. */

		if (!(*map->pfn & NVKM_VMM_PFN_VRAM)) {
			addr = *map->pfn >> NVKM_VMM_PFN_ADDR_SHIFT;
			addr = FUNC3(dev, FUNC7(addr), 0,
					    PAGE_SIZE, DMA_BIDIRECTIONAL);
			if (!FUNC2(FUNC4(dev, addr))) {
				data |= addr >> 4;
				data |= 2ULL << 1; /* SYSTEM_COHERENT_MEMORY. */
				data |= FUNC0(3); /* VOL. */
				data |= FUNC0(0); /* VALID. */
			}
		} else {
			data |= (*map->pfn & NVKM_VMM_PFN_ADDR) >> 4;
			data |= FUNC0(0); /* VALID. */
		}

		FUNC1(pt, vmm, ptei++ * 8, data);
		map->pfn++;
	}
	FUNC5(pt->memory);
}