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
struct gf100_gr {TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  glob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  gf100_mp_global_error ; 
 int /*<<< orphan*/  gf100_mp_warp_error ; 
 struct nvkm_enum* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int,int,int,int,char*,int,char*) ; 
 int FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct gf100_gr *gr, int gpc, int tpc, int sm)
{
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 werr = FUNC3(device, FUNC0(gpc, tpc, 0x730 + (sm * 0x80)));
	u32 gerr = FUNC3(device, FUNC0(gpc, tpc, 0x734 + (sm * 0x80)));
	const struct nvkm_enum *warp;
	char glob[128];

	FUNC4(glob, sizeof(glob), gf100_mp_global_error, gerr);
	warp = FUNC1(gf100_mp_warp_error, werr & 0xffff);

	FUNC2(subdev, "GPC%i/TPC%i/SM%d trap: "
			   "global %08x [%s] warp %04x [%s]\n",
		   gpc, tpc, sm, gerr, glob, werr, warp ? warp->name : "");

	FUNC5(device, FUNC0(gpc, tpc, 0x730 + sm * 0x80), 0x00000000);
	FUNC5(device, FUNC0(gpc, tpc, 0x734 + sm * 0x80), gerr);
}