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
struct nvkm_vmm {scalar_t__ replay; } ;
struct nvkm_memory {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct nvkm_vmm*,struct nvkm_memory*,int) ; 

int
FUNC2(struct nvkm_vmm *vmm, struct nvkm_memory *inst)
{
	u64 base = FUNC0(10) /* VER2 */ | FUNC0(11) /* 64KiB */;
	if (vmm->replay) {
		base |= FUNC0(4); /* FAULT_REPLAY_TEX */
		base |= FUNC0(5); /* FAULT_REPLAY_GCC */
	}
	return FUNC1(vmm, inst, base);
}