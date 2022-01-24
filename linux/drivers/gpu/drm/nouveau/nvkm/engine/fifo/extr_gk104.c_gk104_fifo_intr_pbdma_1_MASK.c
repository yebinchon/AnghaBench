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
struct gk104_fifo {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  gk104_fifo_pbdma_intr_1 ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int,int,char*,int,int,int) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct gk104_fifo *fifo, int unit)
{
	struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 mask = FUNC1(device, 0x04014c + (unit * 0x2000));
	u32 stat = FUNC1(device, 0x040148 + (unit * 0x2000)) & mask;
	u32 chid = FUNC1(device, 0x040120 + (unit * 0x2000)) & 0xfff;
	char msg[128];

	if (stat) {
		FUNC2(msg, sizeof(msg), gk104_fifo_pbdma_intr_1, stat);
		FUNC0(subdev, "PBDMA%d: %08x [%s] ch %d %08x %08x\n",
			   unit, stat, msg, chid,
			   FUNC1(device, 0x040150 + (unit * 0x2000)),
			   FUNC1(device, 0x040154 + (unit * 0x2000)));
	}

	FUNC3(device, 0x040148 + (unit * 0x2000), stat);
}