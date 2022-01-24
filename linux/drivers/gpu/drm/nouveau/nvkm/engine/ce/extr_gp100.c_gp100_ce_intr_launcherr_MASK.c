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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_enum {char* name; } ;
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  gp100_ce_launcherr_report ; 
 struct nvkm_enum* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct nvkm_device*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int,char*) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_engine *ce, const u32 base)
{
	struct nvkm_subdev *subdev = &ce->subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC1(device, 0x104418 + base);
	const struct nvkm_enum *en =
		FUNC0(gp100_ce_launcherr_report, stat & 0x0000000f);
	FUNC2(subdev, "LAUNCHERR %08x [%s]\n", stat, en ? en->name : "");
}