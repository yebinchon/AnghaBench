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
struct nvkm_device {scalar_t__ card_type; int /*<<< orphan*/  fifo; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;
struct gf100_gr {TYPE_2__ base; } ;
struct TYPE_7__ {char* name; } ;

/* Variables and functions */
 scalar_t__ NV_E0 ; 
 struct gf100_gr* FUNC0 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gf100_gr*) ; 
 int /*<<< orphan*/  nv50_data_error_names ; 
 struct nvkm_enum* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*,char*,int,...) ; 
 struct nvkm_fifo_chan* FUNC6 (int /*<<< orphan*/ ,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long,struct nvkm_fifo_chan**) ; 
 int FUNC8 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC10(struct nvkm_gr *base)
{
	struct gf100_gr *gr = FUNC0(base);
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_fifo_chan *chan;
	unsigned long flags;
	u64 inst = FUNC8(device, 0x409b00) & 0x0fffffff;
	u32 stat = FUNC8(device, 0x400100);
	u32 addr = FUNC8(device, 0x400704);
	u32 mthd = (addr & 0x00003ffc);
	u32 subc = (addr & 0x00070000) >> 16;
	u32 data = FUNC8(device, 0x400708);
	u32 code = FUNC8(device, 0x400110);
	u32 class;
	const char *name = "unknown";
	int chid = -1;

	chan = FUNC6(device->fifo, (u64)inst << 12, &flags);
	if (chan) {
		name = chan->object.client->name;
		chid = chan->chid;
	}

	if (device->card_type < NV_E0 || subc < 4)
		class = FUNC8(device, 0x404200 + (subc * 4));
	else
		class = 0x0000;

	if (stat & 0x00000001) {
		/*
		 * notifier interrupt, only needed for cyclestats
		 * can be safely ignored
		 */
		FUNC9(device, 0x400100, 0x00000001);
		stat &= ~0x00000001;
	}

	if (stat & 0x00000010) {
		if (!FUNC2(device, class, mthd, data)) {
			FUNC5(subdev, "ILLEGAL_MTHD ch %d [%010llx %s] "
				   "subc %d class %04x mthd %04x data %08x\n",
				   chid, inst << 12, name, subc,
				   class, mthd, data);
		}
		FUNC9(device, 0x400100, 0x00000010);
		stat &= ~0x00000010;
	}

	if (stat & 0x00000020) {
		FUNC5(subdev, "ILLEGAL_CLASS ch %d [%010llx %s] "
			   "subc %d class %04x mthd %04x data %08x\n",
			   chid, inst << 12, name, subc, class, mthd, data);
		FUNC9(device, 0x400100, 0x00000020);
		stat &= ~0x00000020;
	}

	if (stat & 0x00100000) {
		const struct nvkm_enum *en =
			FUNC4(nv50_data_error_names, code);
		FUNC5(subdev, "DATA_ERROR %08x [%s] ch %d [%010llx %s] "
				   "subc %d class %04x mthd %04x data %08x\n",
			   code, en ? en->name : "", chid, inst << 12,
			   name, subc, class, mthd, data);
		FUNC9(device, 0x400100, 0x00100000);
		stat &= ~0x00100000;
	}

	if (stat & 0x00200000) {
		FUNC5(subdev, "TRAP ch %d [%010llx %s]\n",
			   chid, inst << 12, name);
		FUNC3(gr);
		FUNC9(device, 0x400100, 0x00200000);
		stat &= ~0x00200000;
	}

	if (stat & 0x00080000) {
		FUNC1(gr);
		FUNC9(device, 0x400100, 0x00080000);
		stat &= ~0x00080000;
	}

	if (stat) {
		FUNC5(subdev, "intr %08x\n", stat);
		FUNC9(device, 0x400100, stat);
	}

	FUNC9(device, 0x400500, 0x00010001);
	FUNC7(device->fifo, flags, &chan);
}