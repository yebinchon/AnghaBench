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
struct nvkm_enum {char* name; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv50_disp {scalar_t__* chan; TYPE_2__ base; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  NV_DBG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv50_disp_intr_error_type ; 
 struct nvkm_enum* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,int,int,int,char*,int,int,int) ; 
 int FUNC4 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct nv50_disp *disp, int chid)
{
	struct nvkm_subdev *subdev = &disp->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC4(device, 0x611020 + (chid * 12));
	u32 type = (stat & 0x00007000) >> 12;
	u32 mthd = (stat & 0x00000fff) << 2;
	u32 data = FUNC4(device, 0x611024 + (chid * 12));
	u32 code = FUNC4(device, 0x611028 + (chid * 12));
	const struct nvkm_enum *reason =
		FUNC2(nv50_disp_intr_error_type, type);

	FUNC3(subdev, "chid %d stat %08x reason %d [%s] mthd %04x "
			   "data %08x code %08x\n",
		   chid, stat, type, reason ? reason->name : "",
		   mthd, data, code);

	if (chid < FUNC0(disp->chan) && disp->chan[chid]) {
		switch (mthd) {
		case 0x0200:
			FUNC1(disp->chan[chid], NV_DBG_ERROR);
			break;
		default:
			break;
		}
	}

	FUNC5(device, 0x611020 + (chid * 12), 0x90000000);
}