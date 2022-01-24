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
typedef  int u32 ;
struct nvkm_vmm_map {int /*<<< orphan*/  dma; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_vmm*,struct nvkm_mmu_pt*,int,int,struct nvkm_vmm_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int const) ; 
 int /*<<< orphan*/  nv41_vmm_pgt_pte ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
		 u32 ptei, u32 ptes, struct nvkm_vmm_map *map)
{
#if PAGE_SHIFT == 12
	nvkm_kmap(pt->memory);
	while (ptes--) {
		const u32 data = (*map->dma++ >> 7) | 0x00000001;
		VMM_WO032(pt, vmm, ptei++ * 4, data);
	}
	nvkm_done(pt->memory);
#else
	FUNC0(vmm, pt, ptei, ptes, map, nv41_vmm_pgt_pte);
#endif
}