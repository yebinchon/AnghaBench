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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {int /*<<< orphan*/  bios; } ;
struct nvbios_pll {int type; scalar_t__ reg; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PLL_VPLL0 129 
#define  PLL_VPLL1 128 
 int FUNC0 (struct nvkm_subdev*,struct nvbios_pll*,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvbios_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,scalar_t__,int) ; 

int
FUNC5(struct nvkm_devinit *init, u32 type, u32 freq)
{
	struct nvkm_subdev *subdev = &init->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvbios_pll info;
	int N, fN, M, P;
	int ret;

	ret = FUNC1(device->bios, type, &info);
	if (ret)
		return ret;

	ret = FUNC0(subdev, &info, freq, &N, &fN, &M, &P);
	if (ret < 0)
		return ret;

	switch (info.type) {
	case PLL_VPLL0:
	case PLL_VPLL1:
		FUNC4(device, info.reg + 0, 0x50000610);
		FUNC2(device, info.reg + 4, 0x003fffff,
						(P << 16) | (M << 8) | N);
		FUNC4(device, info.reg + 8, fN);
		break;
	default:
		FUNC3(subdev, "%08x/%dKhz unimplemented\n", type, freq);
		ret = -EINVAL;
		break;
	}

	return ret;
}