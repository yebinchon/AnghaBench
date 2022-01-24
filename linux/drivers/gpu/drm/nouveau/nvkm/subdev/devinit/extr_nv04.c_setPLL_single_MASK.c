#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u32 ;
struct nvkm_pll_vals {int log2P; int NM1; int M1; int N1; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct nvkm_devinit {TYPE_1__ subdev; } ;
struct nvkm_device {TYPE_3__* bios; } ;
struct TYPE_5__ {int chip; } ;
struct TYPE_6__ {TYPE_2__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 
 int FUNC3 (int,int) ; 

void
FUNC4(struct nvkm_devinit *init, u32 reg,
	      struct nvkm_pll_vals *pv)
{
	struct nvkm_device *device = init->subdev.device;
	int chip_version = device->bios->version.chip;
	uint32_t oldpll = FUNC1(device, reg);
	int oldN = (oldpll >> 8) & 0xff, oldM = oldpll & 0xff;
	uint32_t pll = (oldpll & 0xfff80000) | pv->log2P << 16 | pv->NM1;
	uint32_t saved_powerctrl_1 = 0;
	int shift_powerctrl_1 = FUNC3(chip_version, reg);

	if (oldpll == pll)
		return;	/* already set */

	if (shift_powerctrl_1 >= 0) {
		saved_powerctrl_1 = FUNC1(device, 0x001584);
		FUNC2(device, 0x001584,
			(saved_powerctrl_1 & ~(0xf << shift_powerctrl_1)) |
			1 << shift_powerctrl_1);
	}

	if (oldM && pv->M1 && (oldN / oldM < pv->N1 / pv->M1))
		/* upclock -- write new post divider first */
		FUNC2(device, reg, pv->log2P << 16 | (oldpll & 0xffff));
	else
		/* downclock -- write new NM first */
		FUNC2(device, reg, (oldpll & 0xffff0000) | pv->NM1);

	if ((chip_version < 0x17 || chip_version == 0x1a) &&
	    chip_version != 0x11)
		/* wait a bit on older chips */
		FUNC0(64);
	FUNC1(device, reg);

	/* then write the other half as well */
	FUNC2(device, reg, pll);

	if (shift_powerctrl_1 >= 0)
		FUNC2(device, 0x001584, saved_powerctrl_1);
}