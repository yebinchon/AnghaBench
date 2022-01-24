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
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_clk {int dummy; } ;
struct nvbios_pll {int refclk; } ;
struct gt215_clk_info {int pll; int /*<<< orphan*/  fb_delay; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct gt215_clk {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 struct gt215_clk* FUNC0 (struct nvkm_clk*) ; 
 int FUNC1 (TYPE_2__*,int,int,struct gt215_clk_info*) ; 
 int FUNC2 (struct nvkm_subdev*,struct nvbios_pll*,int,int*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,struct nvbios_pll*) ; 

int
FUNC5(struct nvkm_clk *base, int idx, u32 pll, u32 khz,
	       struct gt215_clk_info *info)
{
	struct gt215_clk *clk = FUNC0(base);
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvbios_pll limits;
	int P, N, M, diff;
	int ret;

	info->pll = 0;

	/* If we can get a within [-2, 3) MHz of a divider, we'll disable the
	 * PLL and use the divider instead. */
	ret = FUNC1(&clk->base, idx, khz, info);
	diff = khz - ret;
	if (!pll || (diff >= -2000 && diff < 3000)) {
		goto out;
	}

	/* Try with PLL */
	ret = FUNC4(subdev->device->bios, pll, &limits);
	if (ret)
		return ret;

	ret = FUNC1(&clk->base, idx - 0x10, limits.refclk, info);
	if (ret != limits.refclk)
		return -EINVAL;

	ret = FUNC2(subdev, &limits, khz, &N, NULL, &M, &P);
	if (ret >= 0) {
		info->pll = (P << 16) | (N << 8) | M;
	}

out:
	info->fb_delay = FUNC3(((khz + 7566) / 15133), (u32) 18);
	return ret ? ret : -ERANGE;
}