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
typedef  unsigned long long u64 ;
typedef  size_t u32 ;
struct nvkm_vmm_pt {struct nvkm_mmu_pt** pt; struct nvkm_vmm_pt** pde; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int addr; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int) ; 
#define  NVKM_MEM_TARGET_HOST 130 
#define  NVKM_MEM_TARGET_NCOH 129 
#define  NVKM_MEM_TARGET_VRAM 128 
 int /*<<< orphan*/  FUNC1 (struct nvkm_mmu_pt*,struct nvkm_vmm*,size_t,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct nvkm_vmm *vmm, struct nvkm_vmm_pt *pgd, u32 pdei)
{
	struct nvkm_vmm_pt *pgt = pgd->pde[pdei];
	struct nvkm_mmu_pt *pd = pgd->pt[0];
	struct nvkm_mmu_pt *pt;
	u64 data = 0;

	if ((pt = pgt->pt[0])) {
		switch (FUNC5(pt->memory)) {
		case NVKM_MEM_TARGET_VRAM: data |= 1ULL << 0; break;
		case NVKM_MEM_TARGET_HOST: data |= 2ULL << 0;
			data |= FUNC0(35); /* VOL */
			break;
		case NVKM_MEM_TARGET_NCOH: data |= 3ULL << 0; break;
		default:
			FUNC2(1);
			return;
		}
		data |= pt->addr >> 8;
	}

	if ((pt = pgt->pt[1])) {
		switch (FUNC5(pt->memory)) {
		case NVKM_MEM_TARGET_VRAM: data |= 1ULL << 32; break;
		case NVKM_MEM_TARGET_HOST: data |= 2ULL << 32;
			data |= FUNC0(34); /* VOL */
			break;
		case NVKM_MEM_TARGET_NCOH: data |= 3ULL << 32; break;
		default:
			FUNC2(1);
			return;
		}
		data |= pt->addr << 24;
	}

	FUNC4(pd->memory);
	FUNC1(pd, vmm, pdei * 8, data);
	FUNC3(pd->memory);
}