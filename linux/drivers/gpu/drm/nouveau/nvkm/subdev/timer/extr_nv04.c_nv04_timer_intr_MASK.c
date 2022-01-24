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
struct nvkm_timer {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PTIMER_INTR_0 ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int) ; 
 int FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_timer*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct nvkm_timer *tmr)
{
	struct nvkm_subdev *subdev = &tmr->subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC1(device, NV04_PTIMER_INTR_0);

	if (stat & 0x00000001) {
		FUNC3(device, NV04_PTIMER_INTR_0, 0x00000001);
		FUNC2(tmr);
		stat &= ~0x00000001;
	}

	if (stat) {
		FUNC0(subdev, "intr %08x\n", stat);
		FUNC3(device, NV04_PTIMER_INTR_0, stat);
	}
}