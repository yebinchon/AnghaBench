#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/  timing_20_30_07; int /*<<< orphan*/  ramcfg_11_02_03; int /*<<< orphan*/  ramcfg_11_02_04; } ;
struct nvkm_ram_data {scalar_t__ freq; TYPE_4__ bios; } ;
struct nvkm_ram {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_10__ {struct nvkm_ram_data* next; struct nvkm_ram_data target; struct nvkm_ram_data xition; struct nvkm_ram_data former; TYPE_3__* fb; } ;
struct gk104_ram {TYPE_5__ base; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_8__ {TYPE_2__ subdev; } ;
struct TYPE_6__ {struct nvkm_clk* clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gk104_ram* FUNC1 (struct nvkm_ram*) ; 
 int FUNC2 (struct gk104_ram*,int /*<<< orphan*/ ,struct nvkm_ram_data*) ; 
 int FUNC3 (struct gk104_ram*,struct nvkm_ram_data*) ; 
 scalar_t__ FUNC4 (struct nvkm_ram_data*,struct nvkm_ram_data*,int) ; 
 int /*<<< orphan*/  nv_clk_src_mem ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_clk*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct nvkm_ram *base, u32 freq)
{
	struct gk104_ram *ram = FUNC1(base);
	struct nvkm_clk *clk = ram->base.fb->subdev.device->clk;
	struct nvkm_ram_data *xits = &ram->base.xition;
	struct nvkm_ram_data *copy;
	int ret;

	if (ram->base.next == NULL) {
		ret = FUNC2(ram,
					  FUNC5(clk, nv_clk_src_mem),
					  &ram->base.former);
		if (ret)
			return ret;

		ret = FUNC2(ram, freq, &ram->base.target);
		if (ret)
			return ret;

		if (ram->base.target.freq < ram->base.former.freq) {
			*xits = ram->base.target;
			copy = &ram->base.former;
		} else {
			*xits = ram->base.former;
			copy = &ram->base.target;
		}

		xits->bios.ramcfg_11_02_04 = copy->bios.ramcfg_11_02_04;
		xits->bios.ramcfg_11_02_03 = copy->bios.ramcfg_11_02_03;
		xits->bios.timing_20_30_07 = copy->bios.timing_20_30_07;

		ram->base.next = &ram->base.target;
		if (FUNC4(xits, &ram->base.former, sizeof(xits->bios)))
			ram->base.next = &ram->base.xition;
	} else {
		FUNC0(ram->base.next != &ram->base.xition);
		ram->base.next = &ram->base.target;
	}

	return FUNC3(ram, ram->base.next);
}