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
struct nvkm_device {struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_pll {int type; int bias_p; scalar_t__ reg; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PLL_MEMORY 130 
#define  PLL_VPLL0 129 
#define  PLL_VPLL1 128 
 int FUNC0 (struct nvkm_subdev*,struct nvbios_pll*,int /*<<< orphan*/ ,int*,int*,int*,int*,int*) ; 
 int FUNC1 (struct nvkm_bios*,int /*<<< orphan*/ ,struct nvbios_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,scalar_t__,int) ; 

int
FUNC5(struct nvkm_devinit *init, u32 type, u32 freq)
{
	struct nvkm_subdev *subdev = &init->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_bios *bios = device->bios;
	struct nvbios_pll info;
	int N1, M1, N2, M2, P;
	int ret;

	ret = FUNC1(bios, type, &info);
	if (ret) {
		FUNC2(subdev, "failed to retrieve pll data, %d\n", ret);
		return ret;
	}

	ret = FUNC0(subdev, &info, freq, &N1, &M1, &N2, &M2, &P);
	if (!ret) {
		FUNC2(subdev, "failed pll calculation\n");
		return -EINVAL;
	}

	switch (info.type) {
	case PLL_VPLL0:
	case PLL_VPLL1:
		FUNC4(device, info.reg + 0, 0x10000611);
		FUNC3(device, info.reg + 4, 0x00ff00ff, (M1 << 16) | N1);
		FUNC3(device, info.reg + 8, 0x7fff00ff, (P  << 28) |
							    (M2 << 16) | N2);
		break;
	case PLL_MEMORY:
		FUNC3(device, info.reg + 0, 0x01ff0000,
					        (P << 22) |
						(info.bias_p << 19) |
						(P << 16));
		FUNC4(device, info.reg + 4, (N1 << 8) | M1);
		break;
	default:
		FUNC3(device, info.reg + 0, 0x00070000, (P << 16));
		FUNC4(device, info.reg + 4, (N1 << 8) | M1);
		break;
	}

	return 0;
}