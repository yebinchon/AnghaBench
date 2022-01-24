#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvkm_subdev {int dummy; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; int /*<<< orphan*/  event; struct nvkm_bios* bios; } ;
struct nvkm_clk_func {int nr_pstates; TYPE_1__* pstates; int /*<<< orphan*/  domains; } ;
struct nvkm_clk {int boost_khz; int base_khz; int ustate_ac; int ustate_dc; int allow_reclock; int state_nr; int /*<<< orphan*/  boost_mode; int /*<<< orphan*/  pwrsrc_ntfy; int /*<<< orphan*/  states; int /*<<< orphan*/  waiting; int /*<<< orphan*/  wait; int /*<<< orphan*/  work; int /*<<< orphan*/  domains; struct nvkm_clk_func const* func; struct nvkm_subdev subdev; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_vpstate_header {int /*<<< orphan*/  base_id; int /*<<< orphan*/  boost_id; } ;
struct nvbios_vpstate_entry {int clock_mhz; } ;
struct TYPE_2__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVKM_CLK_BOOST_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_bios*,struct nvbios_vpstate_header*,int /*<<< orphan*/ ,struct nvbios_vpstate_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_bios*,struct nvbios_vpstate_header*) ; 
 int /*<<< orphan*/  nvkm_clk ; 
 void* FUNC7 (struct nvkm_clk*,char const*,int) ; 
 int /*<<< orphan*/  nvkm_clk_pwrsrc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct nvkm_clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvkm_pstate_work ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_subdev*) ; 

int
FUNC13(const struct nvkm_clk_func *func, struct nvkm_device *device,
	      int index, bool allow_reclock, struct nvkm_clk *clk)
{
	struct nvkm_subdev *subdev = &clk->subdev;
	struct nvkm_bios *bios = device->bios;
	int ret, idx, arglen;
	const char *mode;
	struct nvbios_vpstate_header h;

	FUNC12(&nvkm_clk, device, index, subdev);

	if (bios && !FUNC6(bios, &h)) {
		struct nvbios_vpstate_entry base, boost;
		if (!FUNC5(bios, &h, h.boost_id, &boost))
			clk->boost_khz = boost.clock_mhz * 1000;
		if (!FUNC5(bios, &h, h.base_id, &base))
			clk->base_khz = base.clock_mhz * 1000;
	}

	clk->func = func;
	FUNC0(&clk->states);
	clk->domains = func->domains;
	clk->ustate_ac = -1;
	clk->ustate_dc = -1;
	clk->allow_reclock = allow_reclock;

	FUNC1(&clk->work, nvkm_pstate_work);
	FUNC3(&clk->wait);
	FUNC2(&clk->waiting, 0);

	/* If no pstates are provided, try and fetch them from the BIOS */
	if (!func->pstates) {
		idx = 0;
		do {
			ret = FUNC10(clk, idx++);
		} while (ret == 0);
	} else {
		for (idx = 0; idx < func->nr_pstates; idx++)
			FUNC4(&func->pstates[idx].head, &clk->states);
		clk->state_nr = func->nr_pstates;
	}

	ret = FUNC9(NULL, &device->event, nvkm_clk_pwrsrc, true,
			       NULL, 0, 0, &clk->pwrsrc_ntfy);
	if (ret)
		return ret;

	mode = FUNC11(device->cfgopt, "NvClkMode", &arglen);
	if (mode) {
		clk->ustate_ac = FUNC7(clk, mode, arglen);
		clk->ustate_dc = FUNC7(clk, mode, arglen);
	}

	mode = FUNC11(device->cfgopt, "NvClkModeAC", &arglen);
	if (mode)
		clk->ustate_ac = FUNC7(clk, mode, arglen);

	mode = FUNC11(device->cfgopt, "NvClkModeDC", &arglen);
	if (mode)
		clk->ustate_dc = FUNC7(clk, mode, arglen);

	clk->boost_mode = FUNC8(device->cfgopt, "NvBoost",
				       NVKM_CLK_BOOST_NONE);
	return 0;
}