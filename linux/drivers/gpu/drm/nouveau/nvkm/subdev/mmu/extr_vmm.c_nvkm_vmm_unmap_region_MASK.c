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
struct nvkm_vmm {TYPE_2__* mmu; } ;
struct nvkm_vma {int mapped; int /*<<< orphan*/  size; scalar_t__ part; int /*<<< orphan*/  memory; int /*<<< orphan*/  tags; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 struct nvkm_vma* FUNC0 (struct nvkm_vma*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_vmm*,struct nvkm_vma*,struct nvkm_vma*,struct nvkm_vma*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
	struct nvkm_vma *prev = NULL;
	struct nvkm_vma *next;

	FUNC1(vma->memory, vmm->mmu->subdev.device, &vma->tags);
	FUNC2(&vma->memory);
	vma->mapped = false;

	if (vma->part && (prev = FUNC0(vma, prev)) && prev->mapped)
		prev = NULL;
	if ((next = FUNC0(vma, next)) && (!next->part || next->mapped))
		next = NULL;
	FUNC3(vmm, prev, vma, next, vma->size);
}