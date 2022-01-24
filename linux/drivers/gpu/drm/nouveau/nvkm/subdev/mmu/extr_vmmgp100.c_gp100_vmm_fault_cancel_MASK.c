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
typedef  int u32 ;
struct nvkm_vmm {TYPE_2__* mmu; } ;
struct nvkm_device {int dummy; } ;
struct gp100_vmm_fault_cancel_v0 {int inst; int hub; int gpc; int client; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_vmm*,int) ; 
 int FUNC2 (int,void**,int*,struct gp100_vmm_fault_cancel_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_vmm *vmm, void *argv, u32 argc)
{
	struct nvkm_device *device = vmm->mmu->subdev.device;
	union {
		struct gp100_vmm_fault_cancel_v0 v0;
	} *args = argv;
	int ret = -ENOSYS;
	u32 inst, aper;

	if ((ret = FUNC2(ret, &argv, &argc, args->v0, 0, 0, false)))
		return ret;

	/* Translate MaxwellFaultBufferA instance pointer to the same
	 * format as the NV_GR_FECS_CURRENT_CTX register.
	 */
	aper = (args->v0.inst >> 8) & 3;
	args->v0.inst >>= 12;
	args->v0.inst |= aper << 28;
	args->v0.inst |= 0x80000000;

	if (!FUNC0(FUNC4(device))) {
		if ((inst = FUNC3(device)) == args->v0.inst) {
			FUNC1(vmm, 0x0000001b
					     /* CANCEL_TARGETED. */ |
					     (args->v0.hub    << 20) |
					     (args->v0.gpc    << 15) |
					     (args->v0.client << 9));
		}
		FUNC0(FUNC5(device));
	}

	return 0;
}