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
struct nvkm_vmm {int /*<<< orphan*/  mutex; } ;
struct nvkm_vma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,struct nvkm_vma*) ; 

void
FUNC3(struct nvkm_vmm *vmm, struct nvkm_vma **pvma)
{
	struct nvkm_vma *vma = *pvma;
	if (vma) {
		FUNC0(&vmm->mutex);
		FUNC2(vmm, vma);
		FUNC1(&vmm->mutex);
		*pvma = NULL;
	}
}