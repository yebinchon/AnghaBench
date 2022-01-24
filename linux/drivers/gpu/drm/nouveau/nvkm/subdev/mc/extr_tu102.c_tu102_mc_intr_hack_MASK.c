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
typedef  int u32 ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_SUBDEV_FAULT ; 
 struct nvkm_subdev* FUNC0 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nvkm_mc *mc, bool *handled)
{
	struct nvkm_device *device = mc->subdev.device;
	u32 stat = FUNC1(device, 0xb81010);
	if (stat & 0x00000050) {
		struct nvkm_subdev *subdev =
			FUNC0(device, NVKM_SUBDEV_FAULT);
		FUNC3(device, 0xb81010, stat & 0x00000050);
		if (subdev)
			FUNC2(subdev);
		*handled = true;
	}
}