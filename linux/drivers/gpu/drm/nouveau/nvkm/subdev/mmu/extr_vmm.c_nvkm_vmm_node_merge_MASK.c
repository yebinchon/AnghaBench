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
struct nvkm_vma {scalar_t__ size; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_vmm*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_vmm*,struct nvkm_vma*) ; 

__attribute__((used)) static struct nvkm_vma *
FUNC4(struct nvkm_vmm *vmm, struct nvkm_vma *prev,
		    struct nvkm_vma *vma, struct nvkm_vma *next, u64 size)
{
	if (next) {
		if (vma->size == size) {
			vma->size += next->size;
			FUNC1(vmm, next);
			if (prev) {
				prev->size += vma->size;
				FUNC1(vmm, vma);
				return prev;
			}
			return vma;
		}
		FUNC0(prev);

		FUNC3(vmm, next);
		vma->size -= size;
		next->addr -= size;
		next->size += size;
		FUNC2(vmm, next);
		return next;
	}

	if (prev) {
		if (vma->size != size) {
			FUNC3(vmm, vma);
			prev->size += size;
			vma->addr += size;
			vma->size -= size;
			FUNC2(vmm, vma);
		} else {
			prev->size += vma->size;
			FUNC1(vmm, vma);
		}
		return prev;
	}

	return vma;
}