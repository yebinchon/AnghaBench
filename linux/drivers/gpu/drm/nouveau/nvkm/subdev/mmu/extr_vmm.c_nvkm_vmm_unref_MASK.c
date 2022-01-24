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
struct nvkm_vmm {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvkm_vmm_del ; 

void
FUNC1(struct nvkm_vmm **pvmm)
{
	struct nvkm_vmm *vmm = *pvmm;
	if (vmm) {
		FUNC0(&vmm->kref, nvkm_vmm_del);
		*pvmm = NULL;
	}
}