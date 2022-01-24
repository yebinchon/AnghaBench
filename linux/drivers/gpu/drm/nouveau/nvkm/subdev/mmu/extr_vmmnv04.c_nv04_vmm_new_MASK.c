#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_vmm {int limit; TYPE_2__* pd; } ;
struct nvkm_mmu {int dummy; } ;
struct nvkm_memory {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct TYPE_4__ {TYPE_1__** pt; } ;
struct TYPE_3__ {struct nvkm_memory* memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  nv04_vmm ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nvkm_mmu*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct lock_class_key*,char const*,struct nvkm_vmm**) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_memory*,int,int) ; 

int
FUNC4(struct nvkm_mmu *mmu, bool managed, u64 addr, u64 size,
	     void *argv, u32 argc, struct lock_class_key *key, const char *name,
	     struct nvkm_vmm **pvmm)
{
	struct nvkm_memory *mem;
	struct nvkm_vmm *vmm;
	int ret;

	ret = FUNC0(&nv04_vmm, mmu, 8, managed, addr, size,
			    argv, argc, key, name, &vmm);
	*pvmm = vmm;
	if (ret)
		return ret;

	mem = vmm->pd->pt[0]->memory;
	FUNC2(mem);
	FUNC3(mem, 0x00000, 0x0002103d); /* PCI, RW, PT, !LN */
	FUNC3(mem, 0x00004, vmm->limit - 1);
	FUNC1(mem);
	return 0;
}