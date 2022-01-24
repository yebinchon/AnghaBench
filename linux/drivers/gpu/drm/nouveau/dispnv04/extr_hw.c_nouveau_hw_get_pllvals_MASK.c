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
struct nvkm_pll_vals {int /*<<< orphan*/  refclk; } ;
struct nvkm_bios {int dummy; } ;
struct nvif_object {int dummy; } ;
struct nvbios_pll {int reg; int /*<<< orphan*/  refclk; } ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_6__ {TYPE_1__ info; struct nvif_object object; } ;
struct TYPE_5__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_2__ client; } ;
struct drm_device {int dummy; } ;
typedef  enum nvbios_pll_type { ____Placeholder_nvbios_pll_type } nvbios_pll_type ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NV_DEVICE_INFO_V0_CELSIUS ; 
 int /*<<< orphan*/  NV_PRAMDAC_580 ; 
 int NV_PRAMDAC_VPLL_COEFF ; 
 int NV_RAMDAC_580_VPLL1_ACTIVE ; 
 int NV_RAMDAC_580_VPLL2_ACTIVE ; 
 int NV_RAMDAC_VPLL2 ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int,int,struct nvkm_pll_vals*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct nvkm_bios*,int,struct nvbios_pll*) ; 
 int FUNC5 (struct nvif_object*,int) ; 
 struct nvkm_bios* FUNC6 (TYPE_3__*) ; 

int
FUNC7(struct drm_device *dev, enum nvbios_pll_type plltype,
		       struct nvkm_pll_vals *pllvals)
{
	struct nouveau_drm *drm = FUNC1(dev);
	struct nvif_object *device = &drm->client.device.object;
	struct nvkm_bios *bios = FUNC6(&drm->client.device);
	uint32_t reg1, pll1, pll2 = 0;
	struct nvbios_pll pll_lim;
	int ret;

	ret = FUNC4(bios, plltype, &pll_lim);
	if (ret || !(reg1 = pll_lim.reg))
		return -ENOENT;

	pll1 = FUNC5(device, reg1);
	if (reg1 <= 0x405c)
		pll2 = FUNC5(device, reg1 + 4);
	else if (FUNC3(dev)) {
		uint32_t reg2 = reg1 + (reg1 == NV_RAMDAC_VPLL2 ? 0x5c : 0x70);

		pll2 = FUNC5(device, reg2);
	}

	if (drm->client.device.info.family == NV_DEVICE_INFO_V0_CELSIUS && reg1 >= NV_PRAMDAC_VPLL_COEFF) {
		uint32_t ramdac580 = FUNC0(dev, 0, NV_PRAMDAC_580);

		/* check whether vpll has been forced into single stage mode */
		if (reg1 == NV_PRAMDAC_VPLL_COEFF) {
			if (ramdac580 & NV_RAMDAC_580_VPLL1_ACTIVE)
				pll2 = 0;
		} else
			if (ramdac580 & NV_RAMDAC_580_VPLL2_ACTIVE)
				pll2 = 0;
	}

	FUNC2(dev, reg1, pll1, pll2, pllvals);
	pllvals->refclk = pll_lim.refclk;
	return 0;
}