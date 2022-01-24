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
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,struct nvkm_mmu_pt*,int /*<<< orphan*/ *,int,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct nvkm_vmm *vmm,
		   struct nvkm_mmu_pt *pt, u32 ptei, u32 ptes)
{
	FUNC4(pt->memory);
	if (ptei & 3) {
		const u32 pten = FUNC1(ptes, 4 - (ptei & 3));
		FUNC2(vmm, pt, NULL, ptei, pten);
		ptei += pten;
		ptes -= pten;
	}

	while (ptes > 4) {
		FUNC0(pt, vmm, ptei++ * 4, 0x00000000);
		FUNC0(pt, vmm, ptei++ * 4, 0x00000000);
		FUNC0(pt, vmm, ptei++ * 4, 0x00000000);
		FUNC0(pt, vmm, ptei++ * 4, 0x00000000);
		ptes -= 4;
	}

	if (ptes)
		FUNC2(vmm, pt, NULL, ptei, ptes);
	FUNC3(pt->memory);
}