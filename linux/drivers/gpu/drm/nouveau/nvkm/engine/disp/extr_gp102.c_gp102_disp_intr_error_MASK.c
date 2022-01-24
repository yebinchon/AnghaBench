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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_3__ {TYPE_2__ engine; } ;
struct nv50_disp {int /*<<< orphan*/ * chan; TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NV_DBG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int,int,int,int,int) ; 
 int FUNC3 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nv50_disp *disp, int chid)
{
	struct nvkm_subdev *subdev = &disp->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 mthd = FUNC3(device, 0x6111f0 + (chid * 12));
	u32 data = FUNC3(device, 0x6111f4 + (chid * 12));
	u32 unkn = FUNC3(device, 0x6111f8 + (chid * 12));

	FUNC2(subdev, "chid %d mthd %04x data %08x %08x %08x\n",
		   chid, (mthd & 0x0000ffc), data, mthd, unkn);

	if (chid < FUNC0(disp->chan)) {
		switch (mthd & 0xffc) {
		case 0x0080:
			FUNC1(disp->chan[chid], NV_DBG_ERROR);
			break;
		default:
			break;
		}
	}

	FUNC4(device, 0x61009c, (1 << chid));
	FUNC4(device, 0x6111f0 + (chid * 12), 0x90000000);
}