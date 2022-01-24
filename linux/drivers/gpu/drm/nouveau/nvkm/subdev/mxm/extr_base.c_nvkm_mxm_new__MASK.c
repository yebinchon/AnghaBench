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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct nvkm_mxm {int /*<<< orphan*/  action; int /*<<< orphan*/  subdev; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MXM_SANITISE_DCB ; 
 struct nvkm_mxm* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nvkm_mxm*,int) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_mxm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nvkm_mxm*) ; 
 int FUNC5 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  nvkm_mxm ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct nvkm_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

int
FUNC11(struct nvkm_device *device, int index, struct nvkm_mxm **pmxm)
{
	struct nvkm_bios *bios = device->bios;
	struct nvkm_mxm *mxm;
	u8  ver, len;
	u16 data;

	if (!(mxm = *pmxm = FUNC0(sizeof(*mxm), GFP_KERNEL)))
		return -ENOMEM;

	FUNC9(&nvkm_mxm, device, index, &mxm->subdev);

	data = FUNC2(bios, &ver, &len);
	if (!data || !(ver = FUNC5(bios, data))) {
		FUNC7(&mxm->subdev, "no VBIOS data, nothing to do\n");
		return 0;
	}

	FUNC8(&mxm->subdev, "BIOS version %d.%d\n", ver >> 4, ver & 0x0f);
	FUNC7(&mxm->subdev, "module flags: %02x\n",
		   FUNC5(bios, data + 0x01));
	FUNC7(&mxm->subdev, "config flags: %02x\n",
		   FUNC5(bios, data + 0x02));

	if (FUNC1(mxm, ver)) {
		FUNC10(&mxm->subdev, "failed to locate valid SIS\n");
#if 0
		/* we should, perhaps, fall back to some kind of limited
		 * mode here if the x86 vbios hasn't already done the
		 * work for us (so we prevent loading with completely
		 * whacked vbios tables).
		 */
		return -EINVAL;
#else
		return 0;
#endif
	}

	FUNC7(&mxm->subdev, "MXMS Version %d.%d\n",
		   FUNC4(mxm) >> 8, FUNC4(mxm) & 0xff);
	FUNC3(mxm, 0, NULL, NULL);

	if (FUNC6(device->cfgopt, "NvMXMDCB", true))
		mxm->action |= MXM_SANITISE_DCB;
	return 0;
}