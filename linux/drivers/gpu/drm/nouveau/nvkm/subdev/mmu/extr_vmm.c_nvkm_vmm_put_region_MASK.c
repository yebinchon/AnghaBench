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
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {scalar_t__ size; int /*<<< orphan*/  used; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 struct nvkm_vma* FUNC0 (struct nvkm_vma*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_vmm*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,struct nvkm_vma*) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
	struct nvkm_vma *prev, *next;

	if ((prev = FUNC0(vma, prev)) && !prev->used) {
		vma->addr  = prev->addr;
		vma->size += prev->size;
		FUNC1(vmm, prev);
	}

	if ((next = FUNC0(vma, next)) && !next->used) {
		vma->size += next->size;
		FUNC1(vmm, next);
	}

	FUNC2(vmm, vma);
}