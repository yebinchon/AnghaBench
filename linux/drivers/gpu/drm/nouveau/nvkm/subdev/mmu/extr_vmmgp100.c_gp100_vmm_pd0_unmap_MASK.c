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
struct nvkm_mmu_pt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,unsigned long long,unsigned long long,int) ; 

__attribute__((used)) static void
FUNC1(struct nvkm_vmm *vmm,
		    struct nvkm_mmu_pt *pt, u32 pdei, u32 pdes)
{
	FUNC0(pt, vmm, pdei * 0x10, 0ULL, 0ULL, pdes);
}