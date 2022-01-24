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
typedef  int uint32_t ;
struct nvkm_pll_vals {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
typedef  enum nvbios_pll_type { ____Placeholder_nvbios_pll_type } nvbios_pll_type ;
struct TYPE_2__ {int device; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int CHIPSET_NFORCE ; 
 int CHIPSET_NFORCE2 ; 
 int PLL_MEMORY ; 
 int FUNC0 (struct drm_device*,int,struct nvkm_pll_vals*) ; 
 int FUNC1 (struct nvkm_pll_vals*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*) ; 

int
FUNC5(struct drm_device *dev, enum nvbios_pll_type plltype)
{
	struct nvkm_pll_vals pllvals;
	int ret;
	int domain;

	domain = FUNC2(dev->pdev->bus);

	if (plltype == PLL_MEMORY &&
	    (dev->pdev->device & 0x0ff0) == CHIPSET_NFORCE) {
		uint32_t mpllP;
		FUNC4(FUNC3(domain, 0, 3),
				      0x6c, &mpllP);
		mpllP = (mpllP >> 8) & 0xf;
		if (!mpllP)
			mpllP = 4;

		return 400000 / mpllP;
	} else
	if (plltype == PLL_MEMORY &&
	    (dev->pdev->device & 0xff0) == CHIPSET_NFORCE2) {
		uint32_t clock;

		FUNC4(FUNC3(domain, 0, 5),
				      0x4c, &clock);
		return clock / 1000;
	}

	ret = FUNC0(dev, plltype, &pllvals);
	if (ret)
		return ret;

	return FUNC1(&pllvals);
}