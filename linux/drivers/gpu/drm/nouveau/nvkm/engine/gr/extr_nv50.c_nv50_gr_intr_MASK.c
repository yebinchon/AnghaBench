#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_gr {int dummy; } ;
struct TYPE_8__ {TYPE_3__* client; } ;
struct nvkm_fifo_chan {int chid; TYPE_4__ object; } ;
struct nvkm_enum {char* name; } ;
struct nvkm_device {int /*<<< orphan*/  fifo; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;
struct nv50_gr {TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_7__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  nv50_data_error_names ; 
 struct nv50_gr* FUNC0 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  nv50_gr_intr_name ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_gr*,int,int,int,char const*) ; 
 struct nvkm_enum* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,int,char*,...) ; 
 struct nvkm_fifo_chan* FUNC4 (int /*<<< orphan*/ ,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long,struct nvkm_fifo_chan**) ; 
 int FUNC6 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int,int) ; 

void
FUNC9(struct nvkm_gr *base)
{
	struct nv50_gr *gr = FUNC0(base);
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_fifo_chan *chan;
	u32 stat = FUNC6(device, 0x400100);
	u32 inst = FUNC6(device, 0x40032c) & 0x0fffffff;
	u32 addr = FUNC6(device, 0x400704);
	u32 subc = (addr & 0x00070000) >> 16;
	u32 mthd = (addr & 0x00001ffc);
	u32 data = FUNC6(device, 0x400708);
	u32 class = FUNC6(device, 0x400814);
	u32 show = stat, show_bitfield = stat;
	const struct nvkm_enum *en;
	unsigned long flags;
	const char *name = "unknown";
	char msg[128];
	int chid = -1;

	chan = FUNC4(device->fifo, (u64)inst << 12, &flags);
	if (chan)  {
		name = chan->object.client->name;
		chid = chan->chid;
	}

	if (show & 0x00100000) {
		u32 ecode = FUNC6(device, 0x400110);
		en = FUNC2(nv50_data_error_names, ecode);
		FUNC3(subdev, "DATA_ERROR %08x [%s]\n",
			   ecode, en ? en->name : "");
		show_bitfield &= ~0x00100000;
	}

	if (stat & 0x00200000) {
		if (!FUNC1(gr, show, chid, (u64)inst << 12, name))
			show &= ~0x00200000;
		show_bitfield &= ~0x00200000;
	}

	FUNC8(device, 0x400100, stat);
	FUNC8(device, 0x400500, 0x00010001);

	if (show) {
		show &= show_bitfield;
		FUNC7(msg, sizeof(msg), nv50_gr_intr_name, show);
		FUNC3(subdev, "%08x [%s] ch %d [%010llx %s] subc %d "
				   "class %04x mthd %04x data %08x\n",
			   stat, msg, chid, (u64)inst << 12, name,
			   subc, class, mthd, data);
	}

	if (FUNC6(device, 0x400824) & (1 << 31))
		FUNC8(device, 0x400824, FUNC6(device, 0x400824) & ~(1 << 31));

	FUNC5(device->fifo, flags, &chan);
}