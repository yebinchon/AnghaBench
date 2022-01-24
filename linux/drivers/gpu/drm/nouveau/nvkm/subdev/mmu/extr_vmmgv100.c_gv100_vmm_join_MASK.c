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
struct nvkm_vmm {int dummy; } ;
struct nvkm_memory {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct nvkm_vmm*,struct nvkm_memory*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_memory*) ; 
 int FUNC5 (struct nvkm_memory*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_memory*,int,int) ; 
 int FUNC7 (int) ; 

int
FUNC8(struct nvkm_vmm *vmm, struct nvkm_memory *inst)
{
	u64 data[2], mask;
	int ret = FUNC1(vmm, inst), i;
	if (ret)
		return ret;

	FUNC4(inst);
	data[0] = FUNC5(inst, 0x200);
	data[1] = FUNC5(inst, 0x204);
	mask = FUNC0(0);

	FUNC6(inst, 0x21c, 0x00000000);

	for (i = 0; i < 64; i++) {
		if (mask & FUNC0(i)) {
			FUNC6(inst, 0x2a4 + (i * 0x10), data[1]);
			FUNC6(inst, 0x2a0 + (i * 0x10), data[0]);
		} else {
			FUNC6(inst, 0x2a4 + (i * 0x10), 0x00000001);
			FUNC6(inst, 0x2a0 + (i * 0x10), 0x00000001);
		}
		FUNC6(inst, 0x2a8 + (i * 0x10), 0x00000000);
	}

	FUNC6(inst, 0x298, FUNC2(mask));
	FUNC6(inst, 0x29c, FUNC7(mask));
	FUNC3(inst);
	return 0;
}