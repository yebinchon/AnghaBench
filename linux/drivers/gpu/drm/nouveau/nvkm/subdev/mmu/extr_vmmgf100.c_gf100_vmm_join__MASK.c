#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
struct nvkm_vmm {unsigned long long limit; TYPE_1__* pd; } ;
struct nvkm_mmu_pt {unsigned long long addr; int /*<<< orphan*/  memory; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {struct nvkm_mmu_pt** pt; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int) ; 
 int EINVAL ; 
#define  NVKM_MEM_TARGET_HOST 130 
#define  NVKM_MEM_TARGET_NCOH 129 
#define  NVKM_MEM_TARGET_VRAM 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_memory*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_memory*,int,unsigned long long) ; 

int
FUNC6(struct nvkm_vmm *vmm, struct nvkm_memory *inst, u64 base)
{
	struct nvkm_mmu_pt *pd = vmm->pd->pt[0];

	switch (FUNC4(pd->memory)) {
	case NVKM_MEM_TARGET_VRAM: base |= 0ULL << 0; break;
	case NVKM_MEM_TARGET_HOST: base |= 2ULL << 0;
		base |= FUNC0(2) /* VOL. */;
		break;
	case NVKM_MEM_TARGET_NCOH: base |= 3ULL << 0; break;
	default:
		FUNC1(1);
		return -EINVAL;
	}
	base |= pd->addr;

	FUNC3(inst);
	FUNC5(inst, 0x0200, base);
	FUNC5(inst, 0x0208, vmm->limit - 1);
	FUNC2(inst);
	return 0;
}