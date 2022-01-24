#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_10__ {TYPE_3__* client; } ;
struct nvkm_fifo_chan {TYPE_4__ object; TYPE_2__* inst; } ;
struct nvkm_device {scalar_t__ sw; } ;
struct TYPE_7__ {struct nvkm_subdev subdev; } ;
struct TYPE_11__ {TYPE_1__ engine; } ;
struct gf100_fifo {TYPE_5__ base; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  gf100_fifo_pbdma_intr ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int,int,char*,int,int /*<<< orphan*/ ,char*,int,int,int) ; 
 struct nvkm_fifo_chan* FUNC1 (TYPE_5__*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,unsigned long,struct nvkm_fifo_chan**) ; 
 int FUNC3 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct gf100_fifo *fifo, int unit)
{
	struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC3(device, 0x040108 + (unit * 0x2000));
	u32 addr = FUNC3(device, 0x0400c0 + (unit * 0x2000));
	u32 data = FUNC3(device, 0x0400c4 + (unit * 0x2000));
	u32 chid = FUNC3(device, 0x040120 + (unit * 0x2000)) & 0x7f;
	u32 subc = (addr & 0x00070000) >> 16;
	u32 mthd = (addr & 0x00003ffc);
	struct nvkm_fifo_chan *chan;
	unsigned long flags;
	u32 show= stat;
	char msg[128];

	if (stat & 0x00800000) {
		if (device->sw) {
			if (FUNC5(device->sw, chid, subc, mthd, data))
				show &= ~0x00800000;
		}
	}

	if (show) {
		FUNC4(msg, sizeof(msg), gf100_fifo_pbdma_intr, show);
		chan = FUNC1(&fifo->base, chid, &flags);
		FUNC0(subdev, "PBDMA%d: %08x [%s] ch %d [%010llx %s] "
				   "subc %d mthd %04x data %08x\n",
			   unit, show, msg, chid, chan ? chan->inst->addr : 0,
			   chan ? chan->object.client->name : "unknown",
			   subc, mthd, data);
		FUNC2(&fifo->base, flags, &chan);
	}

	FUNC6(device, 0x0400c0 + (unit * 0x2000), 0x80600008);
	FUNC6(device, 0x040108 + (unit * 0x2000), stat);
}