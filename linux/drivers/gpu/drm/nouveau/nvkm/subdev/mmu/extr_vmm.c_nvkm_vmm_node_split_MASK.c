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
typedef  scalar_t__ u64 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {scalar_t__ addr; scalar_t__ size; int part; } ;

/* Variables and functions */
 struct nvkm_vma* FUNC0 (struct nvkm_vma*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_vmm*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,struct nvkm_vma*,struct nvkm_vma*,int /*<<< orphan*/ *,scalar_t__) ; 

struct nvkm_vma *
FUNC3(struct nvkm_vmm *vmm,
		    struct nvkm_vma *vma, u64 addr, u64 size)
{
	struct nvkm_vma *prev = NULL;

	if (vma->addr != addr) {
		prev = vma;
		if (!(vma = FUNC0(vma, vma->size + vma->addr - addr)))
			return NULL;
		vma->part = true;
		FUNC1(vmm, vma);
	}

	if (vma->size != size) {
		struct nvkm_vma *tmp;
		if (!(tmp = FUNC0(vma, vma->size - size))) {
			FUNC2(vmm, prev, vma, NULL, vma->size);
			return NULL;
		}
		tmp->part = true;
		FUNC1(vmm, tmp);
	}

	return vma;
}