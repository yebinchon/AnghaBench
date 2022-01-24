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
typedef  int u8 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_mxm {int* mxms; TYPE_1__ subdev; } ;
struct nvkm_i2c_bus {int dummy; } ;
struct nvkm_i2c {int dummy; } ;
struct nvkm_device {struct nvkm_i2c* i2c; struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 
 scalar_t__ FUNC3 (struct nvkm_i2c_bus*,int,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC4 (struct nvkm_mxm*) ; 
 int FUNC5 (struct nvkm_mxm*) ; 
 struct nvkm_i2c_bus* FUNC6 (struct nvkm_i2c*,int) ; 

__attribute__((used)) static bool
FUNC7(struct nvkm_mxm *mxm, u8 version)
{
	struct nvkm_device *device = mxm->subdev.device;
	struct nvkm_bios *bios = device->bios;
	struct nvkm_i2c *i2c = device->i2c;
	struct nvkm_i2c_bus *bus = NULL;
	u8 i2cidx, mxms[6], addr, size;

	i2cidx = FUNC2(bios, 1 /* LVDS_DDC */) & 0x0f;
	if (i2cidx < 0x0f)
		bus = FUNC6(i2c, i2cidx);
	if (!bus)
		return false;

	addr = 0x54;
	if (!FUNC3(bus, addr, 0, 6, mxms)) {
		addr = 0x56;
		if (!FUNC3(bus, addr, 0, 6, mxms))
			return false;
	}

	mxm->mxms = mxms;
	size = FUNC4(mxm) + FUNC5(mxm);
	mxm->mxms = FUNC1(size, GFP_KERNEL);

	if (mxm->mxms &&
	    FUNC3(bus, addr, 0, size, mxm->mxms))
		return true;

	FUNC0(mxm->mxms);
	mxm->mxms = NULL;
	return false;
}