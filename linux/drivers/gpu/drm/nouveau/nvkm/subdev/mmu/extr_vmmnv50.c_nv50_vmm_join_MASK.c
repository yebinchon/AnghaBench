#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nvkm_vmm_join {struct nvkm_memory* inst; int /*<<< orphan*/  head; } ;
struct nvkm_vmm {int start; int limit; TYPE_4__* pd; int /*<<< orphan*/  join; TYPE_3__* mmu; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pde; } ;
struct TYPE_7__ {TYPE_2__* func; } ;
struct TYPE_5__ {int pd_offset; } ;
struct TYPE_6__ {TYPE_1__ vmm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_vmm_join* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_memory*,int const,int /*<<< orphan*/ ) ; 

int
FUNC6(struct nvkm_vmm *vmm, struct nvkm_memory *inst)
{
	const u32 pd_offset = vmm->mmu->func->vmm.pd_offset;
	struct nvkm_vmm_join *join;
	int ret = 0;
	u64 data;
	u32 pdei;

	if (!(join = FUNC0(sizeof(*join), GFP_KERNEL)))
		return -ENOMEM;
	join->inst = inst;
	FUNC1(&join->head, &vmm->join);

	FUNC4(join->inst);
	for (pdei = vmm->start >> 29; pdei <= (vmm->limit - 1) >> 29; pdei++) {
		if (!FUNC2(vmm, vmm->pd->pde[pdei], &data)) {
			ret = -EINVAL;
			break;
		}
		FUNC5(join->inst, pd_offset + (pdei * 8), data);
	}
	FUNC3(join->inst);
	return ret;
}