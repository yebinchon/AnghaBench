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
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int,int,int,int) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 

void
FUNC3(struct nvkm_engine *mpeg)
{
	struct nvkm_subdev *subdev = &mpeg->subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC1(device, 0x00b100);
	u32 type = FUNC1(device, 0x00b230);
	u32 mthd = FUNC1(device, 0x00b234);
	u32 data = FUNC1(device, 0x00b238);
	u32 show = stat;

	if (stat & 0x01000000) {
		/* happens on initial binding of the object */
		if (type == 0x00000020 && mthd == 0x0000) {
			FUNC2(device, 0x00b308, 0x00000100);
			show &= ~0x01000000;
		}
	}

	if (show) {
		FUNC0(subdev, "%08x %08x %08x %08x\n",
			  stat, type, mthd, data);
	}

	FUNC2(device, 0x00b100, stat);
	FUNC2(device, 0x00b230, 0x00000001);
}