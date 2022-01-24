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
struct nvkm_vmm {int null; } ;
struct nvkm_mmu_pt {int /*<<< orphan*/  memory; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
		  dma_addr_t *list, u32 ptei, u32 ptes)
{
	u32 pteo = (ptei << 2) & ~0x0000000f;
	u32 tmp[4];

	tmp[0] = FUNC1(pt->memory, pteo + 0x0);
	tmp[1] = FUNC1(pt->memory, pteo + 0x4);
	tmp[2] = FUNC1(pt->memory, pteo + 0x8);
	tmp[3] = FUNC1(pt->memory, pteo + 0xc);

	while (ptes--) {
		u32 addr = (list ? *list++ : vmm->null) >> 12;
		switch (ptei++ & 0x3) {
		case 0:
			tmp[0] &= ~0x07ffffff;
			tmp[0] |= addr;
			break;
		case 1:
			tmp[0] &= ~0xf8000000;
			tmp[0] |= addr << 27;
			tmp[1] &= ~0x003fffff;
			tmp[1] |= addr >> 5;
			break;
		case 2:
			tmp[1] &= ~0xffc00000;
			tmp[1] |= addr << 22;
			tmp[2] &= ~0x0001ffff;
			tmp[2] |= addr >> 10;
			break;
		case 3:
			tmp[2] &= ~0xfffe0000;
			tmp[2] |= addr << 17;
			tmp[3] &= ~0x00000fff;
			tmp[3] |= addr >> 15;
			break;
		}
	}

	FUNC0(pt, vmm, pteo + 0x0, tmp[0]);
	FUNC0(pt, vmm, pteo + 0x4, tmp[1]);
	FUNC0(pt, vmm, pteo + 0x8, tmp[2]);
	FUNC0(pt, vmm, pteo + 0xc, tmp[3] | 0x40000000);
}