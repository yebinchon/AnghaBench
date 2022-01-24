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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_volt {scalar_t__ max_uv; } ;
struct nvkm_cstate {int id; int /*<<< orphan*/  head; int /*<<< orphan*/ * domain; int /*<<< orphan*/  voltage; } ;
struct nvkm_pstate {int /*<<< orphan*/  list; int /*<<< orphan*/  pstate; struct nvkm_cstate base; } ;
struct nvkm_domain {scalar_t__ name; int flags; int /*<<< orphan*/  bios; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_clk {struct nvkm_domain* domains; TYPE_2__ subdev; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_cstepX {int /*<<< orphan*/  freq; int /*<<< orphan*/  voltage; } ;
struct TYPE_3__ {struct nvkm_volt* volt; struct nvkm_bios* bios; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NVKM_CLK_DOM_FLAG_CORE ; 
 struct nvkm_cstate* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ nv_clk_src_max ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_bios*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nvbios_cstepX*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_clk*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nvkm_volt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_clk *clk, int idx, struct nvkm_pstate *pstate)
{
	struct nvkm_bios *bios = clk->subdev.device->bios;
	struct nvkm_volt *volt = clk->subdev.device->volt;
	const struct nvkm_domain *domain = clk->domains;
	struct nvkm_cstate *cstate = NULL;
	struct nvbios_cstepX cstepX;
	u8  ver, hdr;
	u32 data;

	data = FUNC2(bios, idx, &ver, &hdr, &cstepX);
	if (!data)
		return -ENOENT;

	if (volt && FUNC4(volt, cstepX.voltage) > volt->max_uv)
		return -EINVAL;

	cstate = FUNC0(sizeof(*cstate), GFP_KERNEL);
	if (!cstate)
		return -ENOMEM;

	*cstate = pstate->base;
	cstate->voltage = cstepX.voltage;
	cstate->id = idx;

	while (domain && domain->name != nv_clk_src_max) {
		if (domain->flags & NVKM_CLK_DOM_FLAG_CORE) {
			u32 freq = FUNC3(clk, true, pstate->pstate,
						   domain->bios, cstepX.freq);
			cstate->domain[domain->name] = freq;
		}
		domain++;
	}

	FUNC1(&cstate->head, &pstate->list);
	return 0;
}