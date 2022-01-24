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
typedef  int u64 ;
struct nvkm_vmm_pt {int page; struct nvkm_mmu_pt** pt; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int addr; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
#define  NVKM_MEM_TARGET_HOST 130 
#define  NVKM_MEM_TARGET_NCOH 129 
#define  NVKM_MEM_TARGET_VRAM 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct nvkm_vmm *vmm, struct nvkm_vmm_pt *pgt, u64 *pdata)
{
	struct nvkm_mmu_pt *pt;
	u64 data = 0xdeadcafe00000000ULL;
	if (pgt && (pt = pgt->pt[0])) {
		switch (pgt->page) {
		case 16: data = 0x00000001; break;
		case 12: data = 0x00000003;
			switch (FUNC1(pt->memory)) {
			case 0x100000: data |= 0x00000000; break;
			case 0x040000: data |= 0x00000020; break;
			case 0x020000: data |= 0x00000040; break;
			case 0x010000: data |= 0x00000060; break;
			default:
				FUNC0(1);
				return false;
			}
			break;
		default:
			FUNC0(1);
			return false;
		}

		switch (FUNC2(pt->memory)) {
		case NVKM_MEM_TARGET_VRAM: data |= 0x00000000; break;
		case NVKM_MEM_TARGET_HOST: data |= 0x00000008; break;
		case NVKM_MEM_TARGET_NCOH: data |= 0x0000000c; break;
		default:
			FUNC0(1);
			return false;
		}

		data |= pt->addr;
	}
	*pdata = data;
	return true;
}